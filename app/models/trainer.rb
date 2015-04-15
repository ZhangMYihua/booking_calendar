class Trainer < ActiveRecord::Base
has_many :timeslots
has_many :bookings
belongs_to :user

validates :certifications, presence: true
end
