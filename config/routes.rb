Rails.application.routes.draw do
  devise_for :users
  resources :people

  root "home#index"

  get "about", to: "about#index"

end
