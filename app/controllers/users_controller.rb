class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @selected = 0
    @noresults = false
    @expertises = Expertise.all.sort_by{ |expertise| expertise.name }
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
      elsif search_params[:expertise_id].present?
        @members = User.where("member = true AND expertise_id = ?", "#{search_params[:expertise_id]}")
          .sort_by{ |user| user.last_name }
        @selected = search_params[:expertise_id].to_i
      else
        @members = User.where(member: true).sort_by{ |user| user.last_name }
      end
    else
      @members = User.where(member: true).sort_by{ |user| user.last_name }
    end
    if @members.empty?
      @noresults = true
      @member = User.new
      @member.last_name = "met deze expertise"
      @member.first_name = "Geen psychiater"
    end
    render layout: 'memberlist'
  end

  def show
    @user = User.find(params[:id])
    @usertrainings = Usertraining.where(user_id: @user.id)
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user || current_user.admin
      @user.update!(user_params)
    else
      flash[:alert] = "Unauthorised action"
    end
    redirect_back(fallback_location: root_path)
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
      params.require(:search).permit(:last_name, :expertise_id, :postalcode)
    end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :tussenvoegsel, :last_name, :initials, :street, :streetnumber, :postalcode, :city, :phonenumber, :dob, :big, :practice_name, :practice_street, :practice_streetnumber, :practice_postalcode, :practice_city, :practice_email, :practice_phonenumber, :website, :contract, :buddy, :training_suggestion, :expertise_id, :waitingperiod, :newregistrations, :personal_data_public, :practice_data_public, :targetaudience_id, :expertise_id, :member)
  end
end
