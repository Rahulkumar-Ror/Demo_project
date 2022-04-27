Rails.application.routes.draw do
  devise_for :users
  resources :course1s
  root "static_page#landing_page"
  get "privacy_policy", to: "static_page#privacy_policy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
