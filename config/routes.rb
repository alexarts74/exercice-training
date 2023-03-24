Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :trees do
    resources :adoptions, only: [:new, :create, :destroy]
  end
  get "/instructions", to: "pages#instructions", as: "instructions"
end
