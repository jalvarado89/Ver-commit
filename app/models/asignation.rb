class Asignation < ActiveRecord::Base
	has_many :Num_Contenerors
	belongs_to :Company, optional: true
	belongs_to :Predio, optional: true
	belongs_to :Planta, optional: true
	belongs_to :Naviera, optional: true
	belongs_to :Cliente_Naviera, optional: true
	belongs_to :Route, optional: true
end
