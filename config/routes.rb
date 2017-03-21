Rails.application.routes.draw do
  root 'start#index'
  get 'start/index'
  get 'phone/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
