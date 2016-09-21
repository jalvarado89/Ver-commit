class Truck < ApplicationRecord
	has_many :Drivers

	belongs_to :Implement
end