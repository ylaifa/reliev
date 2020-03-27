class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if @employee
      employee_profile_path(@employee)
    elsif @masseur
      masseur_profile_path(@masseur.masseur_profile)
    else
      company_profile_path(@company.company_profile)
    end
  end
  
end
