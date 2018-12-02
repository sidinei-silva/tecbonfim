Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config


  resources :atividades
  resources :palestras
  resources :sobres
  resources :apresentacao_dois
  resources :apresentacao_ums

  devise_for :users
  resources :users
  post 'users/sign_in'

  resources :oficinas

  root 'pages#home'
  get 'pages/home'
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
