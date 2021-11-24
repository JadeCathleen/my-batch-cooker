Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :show]

  resources :batch_menus, only: [:new, :create, :show] do
    resources :recipes_lists, only: [:create, :update]
    # member do
    #   patch :associate_recipes # ici on affichera l'index des recettes pour les associer
    # end
    # patch :associate_recipes, on: :member # ici on affichera l'index des recettes pour les associer
  end

  resources :recipes_lists, only: [:destroy]

end
