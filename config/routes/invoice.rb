# frozen_string_literal: true

# :nodoc:
devise_scope :user do
  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_user
  end
  unauthenticated :user do
    root to: 'users/sessions#new'
  end
end
namespace :company do
  resources :customers
  resources :products
  resources :invoices do
    member do
      get :download_pdf
    end
  end
end
