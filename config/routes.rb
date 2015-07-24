Rails.application.routes.draw do
  root 'decks#index'

  devise_for :users

  resources :decks do
    resources :cards, only: [:index, :show, :destroy]
  end


end
