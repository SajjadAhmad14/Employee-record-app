Rails.application.routes.draw do
  resources :employees, only: [:new, :create, :index]
  resources :employments, only:  [:new, :create]
  # root to: "employees#index"
  root to: "home#home_page"
end
