class CardsController < ApplicationController
  def index
    @cards = Card.all
    @card = Card.all.first
  end

  def show
    @card = Card.find(params[:id])
  end

  def flip
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params.merge(user_id: current_user.id))
    @card.user = current_user
    if @card.save
        redirect_to @card, alert: "Card created successfully."
    else
        redirect_to new_card_path, alert: "Error creating card."
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    flash[:notice] = "Card successfully destroyed."
    redirect_to deck_card_path(@deck.id, params[:id])
  end

  def update
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:word_text, :meaning_text)
  end
end
