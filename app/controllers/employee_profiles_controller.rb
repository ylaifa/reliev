class EmployeeProfilesController < ApplicationController
  before_action :authenticate_employee!
  before_action :check_privileges!, only: [:show, :edit]

  def show
    @employee_profile = EmployeeProfile.find_by(employee_id: params[:id])
    if @employee_profile == nil
      @employee_profile = EmployeeProfile.find(params[:id])
    end
  end

  def edit
    @employee_profile = EmployeeProfile.find(params[:id])
  end

  def update
    @employee_profile = EmployeeProfile.find(params[:id])
    if @employee_profile.update(employee_profile_params)
      redirect_to employee_profile_path(@employee_profile), notice: "Votre profil a bien été enregistré."
    else
      flash[:alert] = "Veuillez rentrer des champs valides."
      render "edit"
    end
  end

  private

  def employee_profile_params
    params.require(:employee_profile).permit(:first_name, :last_name)
  end

  def check_privileges!
    redirect_to root_path, notice: "You dont have enough permissions" unless current_employee == EmployeeProfile.find(params[:id]).employee
  end
end
