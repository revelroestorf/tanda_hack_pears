Rails.application.routes.draw do

  root 'home#index'
<<<<<<< HEAD

  resources :admins

  get ':controller(/:action)'



=======
>>>>>>> ce33fcd77c0feb2e50ea3db486cad5e12d6769fb
  devise_for :users
  resources :reveal
  
  resources :conversations, only: [:create] do
    member do
      post :close
    end
    
    resources :messages, only: [:create]
  end
end
