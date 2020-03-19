Rails.application.routes.draw do

  devise_for :masseurs
  devise_for :companies
  devise_for :employees
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about',   to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
end
