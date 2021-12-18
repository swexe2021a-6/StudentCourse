class User < ApplicationRecord
    #TODO: validates
    has_many :valuation #, dependent: :destroy
    
    validates :password, presence: true, confirmation: true, length: { maximum: 8 }
    validates :student_num, uniqueness: true, presence: true, length: { is: 10 },  format: { with: /[0-9]{2}+1114+[0-9]{4}/ }
    attr_accessor :password, :password_confirmation

  def password=(val)
    if val.present?
      self.pass = BCrypt::Password.create(val)
    end
    @password = val
  end
end
