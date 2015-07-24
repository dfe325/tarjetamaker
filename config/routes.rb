Rails.application.routes.draw do
  root 'decks#index'

  devise_for :users

  resources :decks do
    resources :cards
  end

  # get 'cards/:id' => 'cards#show'

end
