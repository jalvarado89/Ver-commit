class NumContenedor < ActiveRecord::Base
	has_many :Asignations
	has_and_belongs_to_many :Retiro_Contenedors
end
