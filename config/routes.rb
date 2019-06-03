Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'welcome#landing_page'
  resources :gyms
  resource :users
  resource :calendar, only: [:show]
  get 'welcome/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
  get '/editprofile', to: 'users#edit'
end
