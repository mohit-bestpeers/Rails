Rails.application.routes.draw do
root "articles#index"
 
  resources :suppliers
  resources :accounts

  resources :articles do
    resources :comments

  
  end
end
