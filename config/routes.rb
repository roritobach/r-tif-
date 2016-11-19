Rails.application.routes.draw do


  root to: 'pages#home'
   get 'about' => 'pages#about'
   get 'evento' => 'pages#evento'
   get 'menu' => 'pages#menu'
   get 'realisations' => 'pages#realisations'

  resources :contacts
  ActiveAdmin.routes(self)
  resources :bookings
  resources :tables
  devise_for :users
  resources :articles
  get 'newletter', to: 'newletters#new', as: 'newletter'
  post 'newletter', to: 'newletters#create'






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
