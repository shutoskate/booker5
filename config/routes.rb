Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  get 'books', to: 'books#show_book' 
  resources :books, only: [:new, :create, :show, :edit, :destroy] 
  resource :users, only:[:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
