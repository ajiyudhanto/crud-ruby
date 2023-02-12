class CardsController < InheritedResources::Base

  private

    def card_params
      params.require(:card).permit(:description, :status)
    end

end
