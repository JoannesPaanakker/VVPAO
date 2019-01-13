# ActionMailer::Base.smtp_settings = {
#   address: 'mail.vvpao.amsterdam',
#   port: 587,
#   domain: 'vvpao.amsterdam',
#   user_name: ENV['EMAIL_ADDRESS'],
#   password: ENV['EMAIL_PASSWORD'],
#   authentication: :login,
#   enable_starttls_auto: false
# }

ActionMailer::Base.smtp_settings = {
  address: 'mail.vvpao.amsterdam',
  port: 587,
  domain: 'some.domain',
  user_name: ENV['EMAIL_ADDRESS'],
  password: ENV['EMAIL_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: false
}
