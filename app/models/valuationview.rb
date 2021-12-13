class Valuationview < ApplicationRecord
    has_many :valuation
    belongs_to :management
end
