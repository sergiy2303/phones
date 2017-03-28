Rails.application.routes.draw do
  resources :lines
  resources :organizations
  root 'lines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
