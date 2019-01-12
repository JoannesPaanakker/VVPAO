ActionMailer::Base.smtp_settings = {
  address: "mail.qedwebdevelopment.com",
  port: 587,
  domain: 'qedwebdevelopment.com',
  user_name: ENV['EMAIL_ADDRESS'],
  password: ENV['EMAIL_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: false
}
