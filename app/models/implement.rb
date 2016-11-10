class Implement < ActiveRecord::Base
	belongs_to :Truck, optional: true
end
