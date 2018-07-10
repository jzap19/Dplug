Rails.application.routes.draw do
  devise_for :users
 root to: 'home#index'
resources :influencers
resources :brands
resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
