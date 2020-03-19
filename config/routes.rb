Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: "registrations" }
  resources  :employee_profiles, only: [:create, :edit, :update]

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
