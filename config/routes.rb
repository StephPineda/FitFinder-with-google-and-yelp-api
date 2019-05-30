Rails.application.routes.draw do
  root 'welcome#landing_page'
  resources :events
  resources :gyms
  resource :users
  get 'welcome/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
end
