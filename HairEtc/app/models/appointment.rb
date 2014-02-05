class Appointment < ActiveRecord::Base
	has_one :stylist, through: :schedule
	has_one :schedule
	has_many :appservs
	has_many :services, through: :appservs
end
