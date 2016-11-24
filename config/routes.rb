Rails.application.routes.draw do
  root to: 'interpreters#search'
  devise_for :users
  resources :interpreters, only: [:show, :index, :new, :edit] do
    resources :bookings
  end
  get 'search', to: "interpreters#search"
  get 'design', to: "pages#design"
  get 'dashboard', to: "interpreters#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
