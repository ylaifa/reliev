Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: "registrations" }
  devise_for :masseurs,  controllers: { registrations: "registrations" }
  devise_for :companies, controllers: { registrations: "registrations" } 
  
  resources  :masseur_profiles,  only: [:index, :show, :edit, :update]
  resources  :company_profiles,  only: [:show, :edit, :update]
  resources  :employee_profiles, only: [:show, :edit, :update]
  
  resources :events
  resources  :search, only: [:index]

  patch 'send_invite_to_employee', to: 'company_profiles#send_invite_to_employee'

  get 'about',   to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'home_page', to: 'welcome#index'

  root :to => 'passthrough#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
