Rails.application.routes.draw do
  resources :customers
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
