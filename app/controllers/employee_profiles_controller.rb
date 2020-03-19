class EmployeeProfilesController < ApplicationController

  def show
    @employee_profile = EmployeeProfile.find(params[:id])
  end

  def edit
    @employee_profile = EmployeeProfile.find_by(employee_id: params[:id])
  end

  def update
    @employee_profile = EmployeeProfile.find(params[:id])
    @employee_profile.update(employee_profile_params)

    redirect_to employee_profile_path(@employee_profile), notice: "Profile successfully completed"
  end

  private

  def employee_profile_params
    params.require(:employee_profile).permit(:first_name, :last_name)
  end
end
