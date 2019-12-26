Rails.application.routes.draw do
  root to: 'books#index'
  get 'books', to: 'books#show_book' 
  resources :books, only: [:new, :create, :show, :edit, :destroy] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
