Rails.application.routes.draw do
  root 'home#index'
  resources :books
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
