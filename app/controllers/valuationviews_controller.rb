class ValuationviewsController < ApplicationController
    def show
        @valuation = Valuation.all
        #item.where(cart_id: current_cart.id)
    end
end
