class Truck < ActiveRecord::Base
	belongs_to :Driver, optional: true
	has_many :Implements
end