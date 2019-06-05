Rails.application.routes.draw do
  get 'sessions/new'
  root 'welcome#landing_page'
  resources :gyms
  resources :users
  resource :calendar, only: [:show]
  get 'welcome/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
  post  '/signup',   to: 'users#create'
  get   '/login',    to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
