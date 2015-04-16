class Timeslot < ActiveRecord::Base
  belongs_to :trainer

  def timerange
    TimeRange.new(start_time, end_time)
  end
end
