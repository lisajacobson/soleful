class Race < ActiveRecord::Base

validates :race_name, :location, :distance, :date, :time, :event_type, :distance_units, presence: true

validates :distance, :time, numericality :true

has_one :user

end
