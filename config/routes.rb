Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'restaurants', to: 'restaurants#index', as: :restuarants
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :restaurant_reviews
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
end
  # => root to: 'restaurants#index'
  # => resources :restaurants, only: [:index, :new, :create, :show, :destroy] do
  # => resources :reviews, only: [:new, :create]
  # => end
