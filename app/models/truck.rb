class Truck < ActiveRecord::Base
	belongs_to :Driver, optional: true
	has_many :Implements
	has_many :Retiros, :primary_key => "id"
end