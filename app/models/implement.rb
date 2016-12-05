class Implement < ActiveRecord::Base
	belongs_to :Truck, optional: true
	has_many :Retiros, :primary_key => "id"
end
