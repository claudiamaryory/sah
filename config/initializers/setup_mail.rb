ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port     => 587,
  :domain   => "local",
  :user_name => "claudiamaryory@misena.edu.co",
  :password => "zamircerezo",
  :authentication => "plain",
  :enable_starttls_auto => true
}
#configuracion correo de la empresa