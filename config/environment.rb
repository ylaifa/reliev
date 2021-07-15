# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings =   {
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :domain             => 'gmail.com',
  :authentication     => :plain,
  :user_name          => ENV['GMAIL_LOGIN'],
  :password           => ENV['GMAIL_PWD']
}
