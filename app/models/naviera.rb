class Naviera < ApplicationRecord
	has_many :Companies
	belongs_to :Cliente_Naviera
end
