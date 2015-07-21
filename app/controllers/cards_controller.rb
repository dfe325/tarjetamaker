class CardsController < ApplicationController
  # look into before actions for authentication
  def index
    @card = Card.all.first
    @cards = Card.all
    @next = Card.last
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
<<<<<<< HEAD
    @card = Card.new(card_params.merge(user_id: current_user.id))
    if @card.save
        redirect_to @card, alert: "Card created successfully."
    else
        redirect_to new_card_path, alert: "Error creating card."
=======
    @card = Card.new(params[:card].merge(user_id: current_user.id))
    respond_to do |format|
      if @card.save
        format.html { redirect_to '/cards', notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
      end
>>>>>>> master
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
