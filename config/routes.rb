Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :books do
    resources :reviews
  end
end
