class CardsController < InheritedResources::Base
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    description = params[:card][:description]
    status = params[:card][:status]

    @card.update(description: description, status: status)

    redirect_to "/cards/#{@card.id}"
  end

  def destroy
    @card.destroy
    redirect_to "/cards"
  end

  private
    def set_card
      @card = Card.find(params[:card_id])
    end

    def card_params
      params.require(:card).permit(:description, :status)
    end

end
