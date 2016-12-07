class Company < ActiveRecord::Base	
	has_many :navieras
	belongs_to :Asignation, optional: true
	has_many :Users

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Telefono, :on => :create
	validates_presence_of :Correo, :on => :create
end
