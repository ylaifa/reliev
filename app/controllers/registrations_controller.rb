class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(resource)
    if @masseur
      edit_masseur_profile_path(@masseur.masseur_profile)
    else
      edit_company_profile_path(@company.company_profile)
    end
  end
end
