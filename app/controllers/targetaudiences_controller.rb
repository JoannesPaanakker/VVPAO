class TargetaudiencesController < ApplicationController

  def create
    @targetaudience = Targetaudience.new(targetaudience_params)
    @targetaudience.save!
    redirect_back(fallback_location: root_path)
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
    redirect_back(fallback_location: root_path)
  end

  private

  def targetaudience_params
    params.require(:targetaudience).permit(:name)
  end
end
