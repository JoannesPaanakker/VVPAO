class TargetaudiencesController < ApplicationController
  before_action :all_targetaudiences, only: [:create, :destroy]
  before_action :set_targetaudience, only: [:destroy]
  respond_to :html, :js

  def new
    @targetaudience = Targetaudience.new
  end

  def create
    @targetaudience = Targetaudience.create(targetaudience_params)
    all_targetaudiences
  end

  def check_if_targetaudience_selected
    @users = User.all
    @targetaudience_selected = false
    @users.each do |u|
      if u.targetaudience_id == @targetaudience.id
       @targetaudience_selected = true
      end
    end
  end

  def destroy
    @targetaudience = Targetaudience.find(params[:id])
    check_if_targetaudience_selected
    if @targetaudience_selected
      flash[:alert] = "Patientengroep is geselecteerd door gebruiker en kan dus niet verwijderd worden."
    else
      @targetaudience.destroy!
    end
    all_targetaudiences
    # redirect_back(fallback_location: root_path)
  end

  private

    def all_targetaudiences
      @targetaudiences = Targetaudience.all.sort_by{ |aud| aud.name.downcase }
    end

    def set_targetaudience
      @targetaudience = Targetaudience.find(params[:id])
    end

    def targetaudience_params
      params.require(:targetaudience).permit(:name)
    end
end
