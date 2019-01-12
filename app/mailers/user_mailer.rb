class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user.subject
  #
  def welkom(user)
    @user = user

    # mail to: @user.email, suject: 'welkom als nieuw lid van de VVPAO website'
    mail(to: 'j.paanakker@upcmail.nl', subject: 'welkom als nieuw lid van de VVPAO website')
  end

  def application(user)
    @user = user
    mail(from: 'admin@VVPAO.com', to: 'j.paanakker@upcmail.nl', subject: 'Er heeft zich iemand aangemeld')
  end
end
