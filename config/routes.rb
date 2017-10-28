Rails.application.routes.draw do
  resources :bank_accounts, only: [:index, :show]
  resources :appreciations, only: [:index, :show] do
    member do
      get :give
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'appreciations#index'
end
