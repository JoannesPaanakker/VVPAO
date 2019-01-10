class UsersController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def index
    # @selected = 0
    @noresults = false
    @expertises = Expertise.all.sort_by{ |expertise| expertise.name }
    @expertises[0].name = "Alle expertises"
    @all_expertises = @expertises[0].name
    if params[:search].present?
      if search_params[:last_name].present?
        @members = User.where("member = true AND last_name ILIKE ?", "%#{search_params[:last_name]}%")
          .sort_by{ |user| user.last_name }
      elsif search_params[:postalcode].present?
        sql_search = "postalcode ILIKE ? AND member = true"
        sql_search2 = "practice_postalcode ILIKE ? AND member = true"
        @members = User.where(sql_search, "%#{search_params[:postalcode]}%")
          .or(User.where(sql_search2, "%#{search_params[:postalcode]}%"))
          .sort_by{ |user| user.last_name }
      elsif search_params[:expertise_name].present?
        @spid = search_params[:expertise_name]
        if @spid == @all_expertises
          get_all_members
        else
          get_members_on_expertise
        end
        @selected = @spid
      else
        @members = User.where(member: true).sort_by{ |user| user.last_name }
      end
    else
      @members = User.where(member: true).sort_by{ |user| user.last_name }
    end
    if @members.empty?
      @noresults = true
      @member = User.new
      @member.last_name = "met deze expertise gevonden"
      @member.first_name = "Geen psychiater"
    end
    get_markers
    render layout: 'memberlist'
  end

  def get_markers
    @markers = @members.map do |psych|
      {
        lng: psych.lng,
        lat: psych.lat,
        title: "#{psych.first_name} #{psych.last_name}\n #{psych.practice_email}",
        id: psych.id
      }
    end
  end

  def get_all_members
    @members = User.where("personal_data_public = true AND member = true")
      .or(User.where("practice_data_public = true AND member = true"))
      .sort_by{ |user| user.last_name }
  end

  def get_members_on_expertise
    sql1 ="personal_data_public = true AND member = true AND ? = ANY (expertises)"
    sql2 = "practice_data_public = true AND member = true AND ? = ANY (expertises)"
    @members = User.where(sql1, "#{search_params[:expertise_name]}")
      .or(User.where(sql2, "#{search_params[:expertise_name]}"))
      .sort_by{ |user| user.last_name }
  end

  def show
    @user = User.find(params[:id])
    @all_expertises = Expertise.all.drop(1)
    render layout: 'user'
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user || current_user.admin
      @user.update!(user_params)
    else
      flash[:alert] = "Unauthorised action"
    end
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      # format.js # index.js.erb
    end

  end

  def expertise
    if params[:search].present?
      @members = User.where(member: true)
        .and(User.where("expertise ILIKE ?", "%#{search_params}%"))
        .sort_by{ |user| user.last_name }
    else
      @members = User.where(member: true).sort_by{ |user| user.last_name }
    end
    render :index
  end

  private
  def search_params
    if params[:search].present?
      params.require(:search).permit(:last_name, :expertise_id, :expertise_name, :postalcode)
    end
  end

  def user_params
    params.require(:user).permit(
      :email, :first_name, :tussenvoegsel, :last_name,
      :initials, :title, :street, :streetnumber, :postalcode,
      :city, :phonenumber, :dob, :big, :practice_name,
      :practice_street, :practice_streetnumber,
      :practice_postalcode, :practice_city,
      :practice_email, :practice_phonenumber, :fax,
      :website, :contract, :buddy, :training_suggestion,
      :expertise_id, :waitingperiod, :newregistrations,
      :personal_data_public, :practice_data_public,
      :targetaudience_id, :expertise_id, :member,
      :lat, :lng, :expertises => []
    )
  end
end
