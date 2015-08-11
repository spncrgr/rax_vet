Rails.application.routes.draw do
  get 'welcome/index'

  resources :encounters
  resources :appointments
  resources :patients
  resources :users
  resources :customers
  resources :employees

  root 'welcome#index'
end
