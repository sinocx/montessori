ActionMailer::Base.smtp_settings = {
  address: "smtp.postmarkapp.com",
  port: 587,
  domain: 'herokuapp.com',
  user_name: ENV['POSTMARK_API_KEY'],
  password: ENV['POSTMARK_API_KEY'],
  authentication: :login,
  enable_starttls_auto: true
}
