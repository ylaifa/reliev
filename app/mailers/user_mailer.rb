class UserMailer < ApplicationMailer
  default from: 'no-reply@reliev.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://reliev-prod.herokuapp.com/login' 
    mail(to: @user.email, subject: 'Bienvenue chez Reliev !') 
  end
end
