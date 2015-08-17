Rails.application.routes.draw do
  resources :books
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pages#home'

   get 'dashboard' => 'pages#dashboard'
 
   post '/buy/:slug', to: 'transactions#create', as: :buy
   get '/pickup/:guid', to: 'transactions#pickup', as: :pickup
end
