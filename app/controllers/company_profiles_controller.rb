class CompanyProfilesController < ApplicationController
  def show
    # @company_profile = CompanyProfile.find(params[:id])
    @company_profile = CompanyProfile.find_by(company_id: params[:id])
    if @company_profile == nil
      @company_profile = CompanyProfile.find(params[:id])
    end
  end

  def edit
    @company_profile = CompanyProfile.find(params[:id])
  end

  def update
    @company_profile = CompanyProfile.find(params[:id])
    if @company_profile.update(company_profile_params)

      redirect_to company_profile_path(@company_profile), notice: "Votre profil a bien été enregistré."
    else
      render :edit, alert: "Veuillez rentrer des champs valides."
    end
  end
end

private 

def company_profile_params 
  params.require(:company_profile).permit(:name)
end