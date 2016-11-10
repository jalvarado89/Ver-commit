class ClienteNaviera < ActiveRecord::Base
	belongs_to :Naviera, optional: true
end
