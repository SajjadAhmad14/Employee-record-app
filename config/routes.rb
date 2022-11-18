Rails.application.routes.draw do
  resources :employees, only: [:new, :create, :index]
  root to: "employees#index"
end
