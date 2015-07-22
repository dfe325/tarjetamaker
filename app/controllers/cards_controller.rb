class CardsController < ApplicationController
  # look into before actions for authentication
  def index
    @cards = []
    @cards << Card.all
    @cards = @cards.flatten
    binding.pry
    @card = @cards.flatten.first
    @next = @cards.shift.second
    binding.pry
  end

  def show
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
    flash[:notice] = "Card deleted"
  end

  # def update
  #   # @card = Card.find(params[:post_id])
  #   # @comment = Comment.find(params[:id])
  #   # if @comment.update_attributes(params[:comment])
  #   #   redirect_to post_comment_url(@card, @comment)
  #   # else
  #   #   render :action => "edit"
  #   # end
  # end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:word_text, :meaning_text)
  end
end
