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
  get '/nuevo-club', to: 'clubs#new_modal', as: 'new_club_modal'

  delete '/admin/users/:id', to: 'admin#destroy', as: 'admin_delete'
  delete '/clubs/:id', to: 'clubs#destroy', as: 'clubs_delete'


  root 'estudiante#index'
  
  resources :users
  resources :admin
  resources :clubs
  resources :encargado
  resources :estudiante
end
