# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_user
  def welkom
    user = User.find(642)
    UserMailer.welkom(user)
  end

  def application
    user = User.find(642)
    UserMailer.application(user)
  end

end
