Rails.application.routes.draw do
  resources :atividades
  resources :palestras
  resources :sobres
  resources :apresentacao_dois
  resources :apresentacao_ums
  devise_for :users
  resources :users
  resources :oficinas
  root 'pages#home'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
