class Company < ApplicationRecord
	belongs_to :Predio
	belongs_to :Route
	belongs_to :Plantum
	belongs_to :Naviera
end
