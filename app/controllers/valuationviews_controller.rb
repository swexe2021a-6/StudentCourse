class ValuationviewsController < ApplicationController
    def show
        @management = Management.all
        @management = Management.find(params[:id])
        @valuation = Valuation.where(subject: params[:id])
    end
end
