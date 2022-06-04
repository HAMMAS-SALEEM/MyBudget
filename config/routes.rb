Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :create] do
    resources :transactions, only: [:index, :new, :create]
  end
end
