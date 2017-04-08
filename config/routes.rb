Rails.application.routes.draw do
  resources :lines
  resources :organizations do
    resources :departaments do
      resources :personals
    end
  end
  root 'organizations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
