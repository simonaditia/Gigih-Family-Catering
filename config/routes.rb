Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :customers
  resources :foods
  resources :categories
  get 'reports', to: 'orders#report'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'  
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
