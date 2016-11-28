class Driver < ActiveRecord::Base
	has_many :Trucks
	belongs_to :Retiro_Contenedor, optional: true
end