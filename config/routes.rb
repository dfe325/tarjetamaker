Rails.application.routes.draw do
  root 'decks#index'

  devise_for :users

  resources :decks do
    resources :cards
  end

  resources :flip, only: [:index]

  get 'deck_cards_path' => 'flip#show'

end
