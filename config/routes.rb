Rails.application.routes.draw do
  resources :lines
  resources :organizations do
    resources :departaments
  end
  root 'lines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
