class Valuation < ApplicationRecord
    validates :comment, presence: true
    validates :student_num, uniqueness: true, presence: true
    has_many :user
end
