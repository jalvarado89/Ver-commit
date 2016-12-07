class Driver < ActiveRecord::Base
	has_many :Trucks
	has_many :Retiros, :primary_key => "id"

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Cedula, :on => :create
	validates_presence_of :Telefono, :on => :create
end