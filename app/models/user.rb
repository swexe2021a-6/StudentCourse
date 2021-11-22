class User < ApplicationRecord
    #TODO: validates
    belongs_to :valuation #, dependent: :destroy
    has_many :valuation, foreign_key: 'user_id'
    
    validates :password, presence: true, confirmation: true
    validates :student_num, uniqueness: true, presence: true
    attr_accessor :password, :password_confirmation

  def password=(val)
    if val.present?
      self.pass = BCrypt::Password.create(val)
    end
    @password = val
  end
end
