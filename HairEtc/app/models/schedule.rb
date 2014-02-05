class Schedule < ActiveRecord::Base
  belongs_to :stylist
  belongs_to :appointment
end
