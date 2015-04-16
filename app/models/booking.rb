class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer

  def timerange
    TimeRange.new(start_time, end_time)
  end




end
