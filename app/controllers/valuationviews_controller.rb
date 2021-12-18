class ValuationviewsController < ApplicationController
    def show
        @valuation = Valuation.all
        @management = Management.all
        @valuation = Valuation.where(subject: params[:id])
        #item.where(cart_id: current_cart.id)
    end
end
