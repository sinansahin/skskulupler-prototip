Rails.application.routes.draw do
  get 'club_role/new'

  root 'home#index'
  devise_for :users
  resources :notices
  resources :news
  resources :activities
  resources :clubs , only: [:index, :show]
  get 'home/yonerge' => 'home#yonerge'
  namespace :admin do 
  resources :clubs , except: [:show]
  resources :users , except: [:show]
  end
  
end
