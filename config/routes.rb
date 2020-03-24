Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: "registrations" }
  devise_for :masseurs,  controllers: { registrations: "registrations" }
  devise_for :companies, controllers: { registrations: "registrations" }

  resources  :masseur_profiles,  only: [:show, :edit, :update]
  resources  :company_profiles,  only: [:show, :edit, :update]
  resources  :employee_profiles, only: [:show, :edit, :update]

  resources  :search, only: [:index]
  
  root 'welcome#index'
  get 'about',   to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
