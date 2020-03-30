class MasseurProfilesController < ApplicationController
  before_action :authenticate_masseur!, except: [:index]
  before_action :check_privileges!, only: [:show, :edit]

  def index
    if params[:query].present?
      @masseur_profiles = MasseurProfile.search(params[:query])
    else
      @masseur_profiles = MasseurProfile.all
    end
  end

  def show
    @masseur_profile = MasseurProfile.find(params[:id])
    @events = Event.where(masseur: @masseur_profile)
  end

  def edit
    @masseur_profile = MasseurProfile.find(params[:id])
  end

  def update
    @masseur_profile = MasseurProfile.find(params[:id])
    if @masseur_profile.update(masseur_profile_params)
      redirect_to masseur_profile_path(@masseur_profile), notice: "Votre profil a bien été enregistré."
    else
      render :edit, alert: "Veuillez rentrer des champs valides."
    end
  end

private 

  def masseur_profile_params 
    params.require(:masseur_profile).permit(:first_name, :last_name, :pricing, :description, :working_place, massage_types: [], time_slots: [])
  end

  def check_privileges!
    redirect_to root_path unless current_masseur == MasseurProfile.find(params[:id]).masseur
  end
end
