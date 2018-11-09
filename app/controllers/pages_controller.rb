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
    @selected = 0
    @noresults = false
    @expertises = Expertise.all.sort_by{ |expertise| expertise.name }
    @targetaudiences = Targetaudience.all.sort_by{ |targetaudience| targetaudience.name }
    if params[:search].present?
      if search_params[:last_name].present?
        get_psychiaters_on_name
      elsif search_params[:postalcode].present?
        get_psychiaters_on_postalcode
      elsif search_params[:expertise_id].present?
        get_spychiaters_on_expertise
        @selected = search_params[:expertise_id].to_i
      else
        get_all_psychiaters
      end
    else
      get_all_psychiaters
    end
    if @psychiaters.empty?
      @noresults = true
      @psychiater = User.new
      @psychiater.last_name = "met deze expertise"
      @psychiater.first_name = "Geen psychiater"
    end
    render layout: 'psychiaterslist'
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
    sql1 ="personal_data_public = true AND member = true AND expertise_id = ?"
    sql2 = "practice_data_public = true AND member = true AND expertise_id = ?"
    @psychiaters = User.where(sql1, "#{search_params[:expertise_id]}")
      .or(User.where(sql2, "#{search_params[:expertise_id]}"))
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

  def lidmaatschap
    @texts = Text.all
    @listitems = Listitem.all
  end

  def klachten
    @texts = Text.all
    @listitems = Listitem.all
  end

  def nieuws
    @texts = Text.all
    @listitems = Listitem.all
  end

  def contact
    @texts = Text.all
    @listitems = Listitem.all
  end

  private

  def search_params
    if params[:search].present?
      params.require(:search).permit(:last_name, :expertise_id, :postalcode)
    end
  end
end
