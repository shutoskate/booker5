Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'books#index'
  get 'books', to: 'books#show_book' 
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
