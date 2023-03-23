Rails.application.routes.draw do
  resources :rooms, only:[:create, :new] do 
    resources :messages, only: [:create, :index, :show, :destroy]
  end
  # resources :requests
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  # resources :applications

  get 'events/history', to: 'events#history', as: 'history'
  post 'requests/:id/accept', to: 'requests#accept', as: 'accept'
  post 'requests/:id/reject', to: 'requests#reject', as: 'reject'
  resources :events do
    resources :requests
  end


  resources :devices, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: 'events#index'
  devise_for :users
end
