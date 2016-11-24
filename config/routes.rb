Rails.application.routes.draw do
  root to: 'interpreters#search'
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :interpreters, only: [:show, :index, :new, :create] do
    resources :bookings
  end
  resources :deaf_users, only: [:new, :create]
  get 'search', to: "interpreters#search"
  get 'design', to: "pages#design"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
