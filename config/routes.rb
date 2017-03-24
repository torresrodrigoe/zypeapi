Rails.application.routes.draw do
  resources :videos

  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'videos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
