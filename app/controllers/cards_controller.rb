class CardsController < ApplicationController
  # look into before actions for authentication
  def index
    @card = Card.all.first
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    respond_to do |format|
      if @card.save
        format.html { redirect_to '/cards', notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
      end
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
    # @card = Card.find(params[:post_id])
    # @comment = Comment.find(params[:id])
    # if @comment.update_attributes(params[:comment])
    #   redirect_to post_comment_url(@card, @comment)
    # else
    #   render :action => "edit"
    # end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:word_text, :meaning_text)
  end

end
