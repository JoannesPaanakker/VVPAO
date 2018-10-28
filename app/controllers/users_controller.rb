class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @usertrainings = Usertraining.where(user_id: @user.id)
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      @user.update!(user_params)
    else
      flash[:alert] = "Unauthorised action"
    end
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :tussenvoegsel, :last_name, :initials, :street, :streetnumber, :number_extension, :postalcode, :city, :phonenumber, :dob, :big, :practice_name, :practice_street, :practice_streetnumber, :practice_number_extension, :practice_postalcode, :practice_city, :practice_email, :practice_phonenumber, :website, :contract, :buddy, :training_suggestion, :expertise_id, :targetaudience_id, :waitingperiod, :newregistrations, :personal_data_public, :practice_data_public)
  end
end
