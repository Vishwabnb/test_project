Rails.application.routes.draw do

  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions: 'customers/sessions'
  }
   resources :feedbacks
  resources :orders
  resources :payments
  resources :order_items
  resources :categories
  resources :items
  resources :customers do
    resources :orders, only: [:index]
  end
  resources :shops
  
  resources :owners
  root 'customers#index'
end
