class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user.subject
  #
  def welkom(user)
    @user = user

    mail(to: @user.email, subject: 'Account op VVPAO website geactiveerd')
    # mail(to: 'j.paanakker@upcmail.nl', subject: 'welkom als nieuw lid van de VVPAO website')
  end

  def application(user)
    @user = user
    mail(to: ['j.paanakker@upcmail.nl', 'cadvries@hotmail.com'], subject: 'Er heeft zich iemand aangemeld')
  end

  def test
    mail(to: ['j.paanakker@upcmail.nl', 'paanakker@brill.com'], subject: 'Er heeft zich iemand aangemeld')
  end

end
