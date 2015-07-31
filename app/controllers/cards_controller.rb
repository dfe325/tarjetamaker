class CardsController < ApplicationController
  def index
    @cards = Card.all
    @card = params[:id]
    # respond_to do |format|
    #   format.html
    #   format.xml  { render :xml => @users }
    #   format.json { render :json => @users }
    # end
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
    flash[:notice] = "Card successfully destroyed."
    redirect_to deck_card_path(:deck_id, @card.next)
  end

  def update
    @card = Card.find(params[params[:id]])
    @card.update!(card_params)
    redirect_to @card
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:front, :flip)
  end
end
