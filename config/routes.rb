Rails.application.routes.draw do
  devise_for :users
  resources :course1s do
    resources :lesson1s
  end
  resources :users, only: [:index, :edit, :show, :update]
  root "static_page#landing_page"
  get "privacy_policy", to: "static_page#privacy_policy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
