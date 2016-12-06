Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :interpreters, only: [:show, :index, :new, :create] do
    resources :bookings do
      resources :reviews, only: [:new, :create, :show]
    end
    resources :language_skills, only: [:new, :create, :destroy]
  end

  resources :deaf_users, only: [:new, :create, :edit, :update] do
    resources :language_skills, only: [:new, :create, :destroy]
  end

  get 'search', to: "interpreters#index"
  get 'design', to: "pages#design"
  get 'dashboard', to: "interpreters#dashboard"
  get 'profile', to: "deaf_users#profile"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
