Rails.application.routes.draw do
  devise_for :interpreters
  devise_for :deaf_users
  root to: 'pages#home'
  resources :interpreter do
    resources :bookings
  end
  get 'search', to: "interpreters#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

