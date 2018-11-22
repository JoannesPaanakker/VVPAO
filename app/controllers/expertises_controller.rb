class ExpertisesController < ApplicationController
  before_action :all_expertises, only: [:create, :destroy]
  before_action :set_expertise, only: [:destroy]
  respond_to :html, :js

  def new
    @expertise = Expertise.new
  end

  def create
    @expertise  = Expertise.create(expertise_params)
    all_expertises
    # redirect_back(fallback_location: root_path)
  end

  def check_if_expertise_selected
    @users = User.all
    @expertise_selected = false
    @users.each do |u|
      if u.expertise_id == @expertise.id
       @expertise_selected = true
      end
    end
  end

  def destroy
    @expertise = Expertise.find(params[:id])
    check_if_expertise_selected
    if @expertise_selected
      flash[:alert] = "Expertise is geselecteerd door gebruiker en kan dus niet verwijderd worden."
    else
      @expertise.destroy!
    end
    all_expertises
    # redirect_back(fallback_location: root_path)
  end

  private

    def all_expertises
      @expertises = Expertise.all.sort_by{ |exp| exp.name.downcase }
    end

    def set_expertise
      @expertise = Expertise.find(params[:id])
    end

    def expertise_params
      params.require(:expertise).permit(:name)
    end

end
