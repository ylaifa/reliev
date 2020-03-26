Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: "registrations" }
  devise_for :masseurs,  controllers: { registrations: "registrations" }
  devise_for :companies, controllers: { registrations: "registrations" }

  devise_scope :company do 
    match "/companies/:project_id/invitations/new", :to => "invitations#new", :via => "get", :as => "new_project_invitation"
  end
  
  resources  :masseur_profiles,  only: [:index, :show, :edit, :update]
  resources  :company_profiles,  only: [:show, :edit, :update]
  resources  :employee_profiles, only: [:show, :edit, :update]

  resources  :search, only: [:index]

  get 'about',   to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
