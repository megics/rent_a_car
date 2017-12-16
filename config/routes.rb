Rails.application.routes.draw do
  get 'rentals/index'

  get 'rentals/show'

  get 'rentals/new'

  get 'rentals/create'

  get 'rentals/edit'

  get 'rentals/update'

  get 'rentals/destroy'

  root 'welcome#index'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :brands do
    resources :models
  end

  resources :categories

  resources :models

  resources :vehicles

  resources :customers

  resources :rentals

end
