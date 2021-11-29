class Valuation < ApplicationRecord
    validates :comment, presence: true
    validates :star, presence: true
    belongs_to :user
end
