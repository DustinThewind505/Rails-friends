Rails.application.routes.draw do
  devise_for :users
  resources :people

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    post '/users/sign_up' => 'devise/registrations#create'
  end

  root "home#index"

  get "about", to: "about#index"

end
