class Valuation < ApplicationRecord
    validates :comment, presence: true
    validates :student_num, uniqueness: true, presence: true
    belongs_to :user
end
