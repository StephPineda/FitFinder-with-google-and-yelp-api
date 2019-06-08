Rails.application.routes.draw do
  get 'sessions/new'
  root 'welcome#landing_page'
  resources :gyms
  resources :users
  resource :calendar, only: [:show]
  resources :favorites, only: [:create, :destroy]
  get 'welcome/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
  post  '/signup',   to: 'users#create'
  get   '/login',    to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'
  get '/map', to: 'gyms#map'
  post '/bookclass', to: 'users#bookclass', as:'bookclass'
  get '/gyms_pins', to: "gyms#index_coords"
end
