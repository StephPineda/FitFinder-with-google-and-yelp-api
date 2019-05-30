Rails.application.routes.draw do
  resources :events
  resources :gyms
  resource :users
  get 'welcome/index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
end
