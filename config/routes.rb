# == Route Map
#

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  resources :buildings do
    resources :floors, except: :index do
      resources :rooms, except: :index
    end
  end
end
