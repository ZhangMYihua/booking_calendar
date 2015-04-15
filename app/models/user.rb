class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_one :trainer
  has_many :bookings


  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city_time_zone, presence: true
  validates :email, uniqueness: true

  
end
