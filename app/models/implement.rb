class Implement < ActiveRecord::Base
	belongs_to :Truck, optional: true
	belongs_to :Retiro_Contenedor, optional: true
end
