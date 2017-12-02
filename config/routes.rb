Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :categories do
    resources :vehicles
  end

  resources :brands do
    resources :models
  end

  resources :models do
    resources :vehicles
  end


  resources :models

  resources :vehicles

  resources :customers

end
