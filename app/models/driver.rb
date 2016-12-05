class Driver < ActiveRecord::Base
	has_many :Trucks
	has_many :Retiros, :primary_key => "id"
end