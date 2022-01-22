Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "bookmarks/new", to: "bookmarks#new"

  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # get "lists/:id", to: "lists#show", as: :list
  # post "lists", to: "lists#create"
  root to: 'lists#index'

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:create]
  end
end
