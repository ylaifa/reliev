class UserMailer < ApplicationMailer
  default from: 'no-reply@reliev.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://reliev-prod.herokuapp.com/login' 
    mail(to: @user.email, subject: 'Bienvenue chez Reliev !') 
  end

  def order_email(event)
    @masseur = MasseurProfile.find(event.masseur)
    @url  = "https://reliev-prod.herokuapp.com/masseur_profiles/#{event.masseur}" 
    mail(to: @masseur.masseur.email, subject: 'Vous avez une nouvelle réservation !') 
  end
end
