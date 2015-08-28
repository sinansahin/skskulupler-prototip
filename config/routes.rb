Rails.application.routes.draw do


  root 'home#index'
  devise_for :users
  resources :notices, only: [:show]
  resources :infos
  resources :club_roles
  resources :activities
  resources :clubs , only: [:index, :show]
  get 'home/yonerge' => 'home#yonerge'
  get 'home/kuluplerim' => 'home#kuluplerim'
  namespace :admin do 
    resources :clubs , except: [:show]
    resources :users , except: [:show]
    resources :notices
    resources :infos
    resources :activities
  end
  
end
