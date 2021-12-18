class Valuation < ApplicationRecord
    validates :comment, presence: true ,length: { maximum: 300 }
    validates :star, presence: true ,numericality: { less_than: 101 ,greater_than: -1 }
    belongs_to :user
    #belongs_to :management
end
