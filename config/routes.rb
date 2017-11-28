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


end
