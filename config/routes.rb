Rails.application.routes.draw do


  root 'home#index'
  devise_for :users
  resources :notices, only: [:show, :index]
  resources :infos, only: [:show, :index]
  resources :club_roles
  resources :activities, only: [:show, :index]
  resources :clubs , only: [:index, :show]
  get 'home/yonerge' => 'home#yonerge'
  namespace :admin do 
    resources :clubs , except: [:show]
    resources :users , except: [:show]
    resources :notices
    resources :infos
    resources :activities
  end
  
end
