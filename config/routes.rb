Rails.application.routes.draw do
  resources :pins

  devise_for :users
  root 'home#indexlove'
  get 'home/about'

  
end
