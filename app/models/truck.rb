class Truck < ActiveRecord::Base
	belongs_to :Driver, optional: true
	has_many :Implements
	belongs_to :Retiro_Contenedor, optional: true
end