# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'recipe_search#new'
  post 'recipe_search', to: 'recipe_search#create'
  get 'recipe_search/results', to: 'recipe_search#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
