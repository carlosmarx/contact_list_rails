Rails.application.routes.draw do

  root  to: 'static_pages#index'

  get 'about', to: 'static_pages#about'
  get 'contact_us', to: 'static_pages#contact'

  resources :contacts
  resources :users, only: [:new, :create, :show]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
