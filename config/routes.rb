Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # index, new, create, edit, update, show, destroy
  # for restaurants: index, new, create, show + reviews/show
  # for review: new, create

  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :create]
  end
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:restaurant_id', to: 'restaurants#show', as: :restaurant
  # # get 'restaurants/:id/reviews', to: 'reviews#index'

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
end
