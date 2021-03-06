Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :trainers, only: [:show, :index, :create, :destroy, :update] do
    resources :pokemons, only: [:index, :show, :create, :update, :destroy] 
  end

  resources :pokemons, only: [:show, :index, :create, :destroy, :update] do
    resources :trainers, only: [:index, :show, :create, :update, :destroy]
  end

  #resources :pokemons, only: [:index, :show, :create, :update, :destroy] 
end
