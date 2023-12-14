Rails.application.routes.draw do
  get 'home/index'
  resources :lists do
    resources :products
  end
  root "lists#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
