Rails.application.routes.draw do

  root 'home#index'

  resources :admins

  get ':controller(/:action)'



  devise_for :users

  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end
