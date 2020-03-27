class PassthroughController < ApplicationController
  def index
    if current_employee
      path = employee_profile_path(current_employee.employee_profile)
    elsif current_masseur
      path = masseur_profile_path(current_masseur.masseur_profile)
    elsif current_company
      path = company_profile_path(current_company.company_profile)
    else
      path = home_page_path
    end

    redirect_to path
  end   
end