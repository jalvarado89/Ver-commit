class ClienteNaviera < ActiveRecord::Base
	belongs_to :Naviera, optional: true
	belongs_to :Asignation, optional: true
end
