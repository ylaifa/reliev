class CompanyProfilesController < ApplicationController
  before_action :authenticate_company!
  before_action :check_privileges!, only: [:show, :edit]

  def show
    @company_profile = CompanyProfile.find(params[:id])
    @events = @company_profile.company.events
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

  def send_invite_to_employee
    Employee.invite!(email: params[:email], company: current_company)
    redirect_to company_profile_path(current_company.company_profile), notice: "L'invitation a été envoyée avec succès"
  end

  private 

  def company_profile_params 
    params.require(:company_profile).permit(:name, :city, :phone_number, :business_line)
  end

  def check_privileges!
    redirect_to root_path unless current_company == CompanyProfile.find(params[:id]).company
  end
end

