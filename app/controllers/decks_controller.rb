class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params.merge(user_id: current_user.id))
    @deck.user = current_user
    if @deck.save
        redirect_to @deck, alert: "Deck created successfully."
    else
        redirect_to new_card_path, alert: "Error creating deck."
    end

  end

  def destroy
  end

  def update
  end

  private

  def set_deck
  end

  def deck_params
  end
end
