class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(resource)
    if @employee
      edit_employee_profile_path(@employee)
    elsif @masseur
      edit_masseur_profile_path(@masseur)
    elsif @company
      edit_company_profile_path(@company)
    end
  end
end
