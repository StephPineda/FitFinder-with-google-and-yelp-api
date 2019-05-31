Rails.application.routes.draw do
  root 'welcome#landing_page'
  resources :gyms
  resource :users
  resource :calendar, only: [:show]
  get 'welcome/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  '/signup',  to: 'users#new'
end
 
