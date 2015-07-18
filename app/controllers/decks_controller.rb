class deckController < ApplicationController
  # look into before actions for authentication
  def index
    # if params[:link] == ""
    @deck = deck.all.first
    @decks = deck.all
  end

  def show
    @deck = deck.find(params[:id])
  end

  def new
    @deck = deck.new
  end

  def create
    @deck = deck.new(deck_params)
    respond_to do |format|
      if @deck.save
        format.html { redirect_to '/deck', notice: 'deck was successfully created.' }
        format.json { render :show, status: :created, location: @deck }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @deck = deck.find(params[:id])
    @deck.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end

  def edit

  end

  def update
    # @deck = deck.find(params[:post_id])
    # @comment = Comment.find(params[:id])
    # if @comment.update_attributes(params[:comment])
    #   redirect_to post_comment_url(@deck, @comment)
    # else
    #   render :action => "edit"
    # end
  end

  private

  def set_deck
    @deck = deck.find(params[:id])
  end

  def deck_params
    params.require(:deck).permit(:word_text, :meaning_text)
  end

end
