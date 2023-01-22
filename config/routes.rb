Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}
  # resources :categories
  # resources :deals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :splash, only: %i[index]
  get '/users/reset_password', to: 'users#reset_password_view'
  resources :users do
    patch :reset_password, on: :member
  end
  root "splash#index"
  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :deals, only: [:index, :new, :create ]
  end

end