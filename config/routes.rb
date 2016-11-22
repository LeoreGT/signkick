Rails.application.routes.draw do
  devise_for :interpreters do
    resources :bookings
  end
  devise_for :deaf_users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
