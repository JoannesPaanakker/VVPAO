class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
  respond_to :js, :json, :html

  def home
    @texts = Text.all
    @listitems = Listitem.all
    @newsitems = Newsitem.all
    @trainings = Training.all
  end

  def informatie
    @texts = Text.all
    @listitems = Listitem.all
    @chair = Bestuur.where(role: "chair")[0]
    @treasurer = Bestuur.where(role: "treasurer")[0]
    @bestuursleden = Bestuur.where(role: "member")
    @categories = Category.all
  end

  def nascholing
    @texts = Text.all
    @listitems = Listitem.all
    @trainings = Training.all
  end

  def psychiaters
    get_users
    @noresults = false
    @expertises = Expertise.all.sort_by{ |expertise| expertise.name }
    # change name of first entry (000000)
    @expertises[0].name = "Alle expertises"
    @all_expertises = @expertises[0].name
    @targetaudiences = Targetaudience.all.sort_by{ |targetaudience| targetaudience.name }
    if params[:search].present?
      if search_params[:last_name].present?
        get_psychiaters_on_name
      elsif search_params[:postalcode].present?
        get_psychiaters_on_postalcode
      elsif search_params[:expertise_name].present?
        @spid = search_params[:expertise_name]
        if @spid == @all_expertises
          get_all_psychiaters
        else
          get_spychiaters_on_expertise
        end
        @selected = @spid
      else
        get_all_psychiaters
      end
    else
      get_all_psychiaters
    end
    if @psychiaters.empty?
      @noresults = true
      @psychiater = User.new
      @psychiater.last_name = "die voldoet aan zoek criteria gevonden."
      @psychiater.first_name = "Geen psychiater"
    end
    get_markers
    render layout: 'psychiaterslist'
  end

  def get_users
    @allemaal = User.all
    @all_psychs1 = @allemaal.map do |psych|
      {
        id: psych.id,
        street: psych.practice_street,
        city: psych.practice_city,
        lat: psych.lat,
      }
    end
    @all_psychs = @all_psychs1.to_json
  end

  def get_markers
    @markers1 = @psychiaters.map do |psych|
      {
        lng: psych.lng,
        lat: psych.lat,
        title: "#{psych.first_name} #{psych.last_name}\n #{psych.practice_email}",
        id: psych.id
      }
    end
    @markers = @markers1.to_json
  end

  def get_all_psychiaters
    @psychiaters = User.where("personal_data_public = true AND member = true")
      .or(User.where("practice_data_public = true AND member = true"))
      .sort_by{ |user| user.last_name }
  end

  def get_psychiaters_on_name
    sql1 ="personal_data_public = true AND member = true AND last_name ILIKE ?"
    sql2 = "practice_data_public = true AND member = true AND last_name ILIKE ?"
    @psychiaters = User.where(sql1, "%#{search_params[:last_name]}%")
      .or(User.where(sql2, "%#{search_params[:last_name]}%"))
      .sort_by{ |user| user.last_name }
  end

  def get_psychiaters_on_postalcode
    sql1 = "personal_data_public = true AND member = true AND postalcode ILIKE ?"
    sql2 = "personal_data_public = true AND member = true AND practice_postalcode ILIKE ?"
    sql3 = "practice_data_public = true AND member = true AND postalcode ILIKE ?"
    sql4 = "practice_data_public = true AND member = true AND practice_postalcode ILIKE ?"
    @psychiaters = User.where(sql1, "%#{search_params[:postalcode]}%")
      .or(User.where(sql2, "%#{search_params[:postalcode]}%"))
      .or(User.where(sql3, "%#{search_params[:postalcode]}%"))
      .or(User.where(sql4, "%#{search_params[:postalcode]}%"))
      .sort_by{ |user| user.last_name }
  end

  def get_spychiaters_on_expertise
    sql1 ="personal_data_public = true AND member = true AND ? = ANY (expertises)"
    sql2 = "practice_data_public = true AND member = true AND ? = ANY (expertises)"
    @psychiaters = User.where(sql1, "#{search_params[:expertise_name]}")
      .or(User.where(sql2, "#{search_params[:expertise_name]}"))
      .sort_by{ |user| user.last_name }
  end

  def ajax_get_spychiaters_on_expertise
    sql1 ="personal_data_public = true AND member = true AND expertise_id = ?"
    sql2 = "practice_data_public = true AND member = true AND expertise_id = ?"
    @psychiaters = User.where(sql1, "#{search_params[:expertise_id]}")
      .or(User.where(sql2, "#{search_params[:expertise_id]}"))
      .sort_by{ |user| user.last_name }
    respond_to do |format|
     format.js
    end
  end

  def contact
    @texts = Text.all
    @listitems = Listitem.all
  end

  def testmail
    # @testmailuser = User.first
    # UserMailer.application(@testmailuser).deliver_now
    UserMailer.test.deliver_now
    redirect_back(fallback_location: root_path)
  end

  def test
    render layout: 'test'
  end

  private

  def search_params
    if params[:search].present?
      params.require(:search).permit(:last_name, :expertise_id, :expertise_name, :postalcode)
    end
  end
end
