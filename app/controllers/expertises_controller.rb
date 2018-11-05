class ExpertisesController < ApplicationController

  def create
    @expertise = Expertise.new(expertise_params)
    @expertise.save!
    redirect_back(fallback_location: root_path)
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
    redirect_back(fallback_location: root_path)
  end

  private

  def expertise_params
    params.require(:expertise).permit(:name)
  end
end
