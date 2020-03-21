class MasseurProfilesController < ApplicationController
  def show
    @masseur_profile = MasseurProfile.find(params[:id])
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
end

private 

def masseur_profile_params 
  params.require(:masseur_profile).permit(:first_name, :last_name, :pricing, :description)
end
