class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :tussenvoegsel, :last_name, :initials, :street, :streetnumber, :postalcode, :city, :phonenumber, :dob, :big, :practice_name, :practice_street, :practice_streetnumber, :practice_postalcode, :practice_city, :practice_email, :practice_phonenumber, :website, :contract, :buddy, :training_suggestion, :expertise_id, :waitingperiod, :newregistrations, :personal_data_public, :practice_data_public, :targetaudience_id, :expertise_id, :member, :lat, :lng, :title, :fax])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :tussenvoegsel, :last_name, :initials, :street, :streetnumber, :postalcode, :city, :phonenumber, :dob, :big, :practice_name, :practice_street, :practice_streetnumber, :practice_postalcode, :practice_city, :practice_email, :practice_phonenumber, :website, :contract, :buddy, :training_suggestion, :expertise_id, :waitingperiod, :newregistrations, :personal_data_public, :practice_data_public, :targetaudience_id, :expertise_id, :member, :title, :fax])
  end

  def after_sign_in_path_for(resource)
    if current_user.member || current_user.admin
      user_path(current_user.id)
    else
      reset_session
      flash[:alert] = "Uw lidmaatschapsaanvraag is in behandeling"
      root_path
    end
  end
end
