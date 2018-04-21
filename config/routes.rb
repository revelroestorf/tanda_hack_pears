Rails.application.routes.draw do

  root 'home#index'

  resources :admins

  get ':controller(/:action)'
<<<<<<< HEAD

  post 'admins/end_pairings'

=======
>>>>>>> 93c25201cc3dbf9384b51de0e137e4197ac1322e
  devise_for :users
  resources :reveal

  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end
