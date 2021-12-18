class Valuation < ApplicationRecord
    validates :comment, presence: true ,length: { maximum: 101 }
    validates :star, presence: true ,numericality: { in: 0..100 }
    belongs_to :user
    #belongs_to :management
end
