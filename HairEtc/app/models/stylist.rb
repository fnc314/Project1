class Stylist < ActiveRecord::Base
	has_many :appointments, through: :schedule
	has_one :schedule
	
end
