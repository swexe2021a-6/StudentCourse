class ValuationController < ApplicationController
    def search
        @valuation = Valuation.where(title: params[:keyword])
        render "index"
    end
end
