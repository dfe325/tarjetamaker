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

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end

  def update
    @card = Card.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_url(@card, @comment)
    else
      render :action => "edit"
    end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:word_text, :meaning_text)
  end
end
