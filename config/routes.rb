Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  patch 'admin/:id', to: 'admin#update', as: 'admin_update'
  get 'admin/users', to: 'admin#users', as: 'admin_users'
  get 'admin/index', to: 'admin#index', as: 'admin_index'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"'

  root 'home#index'
  resources :users
  resources :admin
  resources :encargado
  resources :estudiante

end
