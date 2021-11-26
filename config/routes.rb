Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'
  # get 'customers/index'
  # get 'customers/show'
  resources :customers, only: %i[index show]

  # this route below goes over all products in the collection
  # and allows for a search to be run on them
  resources :products, only: %i[index show] do
    collection do
      get "search"
    end
  end
  root to: "products#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
