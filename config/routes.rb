Rails.application.routes.draw do
  root 'categories#index'
  devise_for :users
  resources :categories, only: [:index, :new, :create] do
    resources :transactions, only: [:index, :new, :create]
  end
end
