class Route < ActiveRecord::Base
	belongs_to :Company, optional: true
	belongs_to :Asignation, optional: true

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Precio_Empresa_2Ejes, :on => :create
	validates_presence_of :Precio_Empresa_3Ejes, :on => :create
	validates_presence_of :Precio_Chofer, :on => :create
	validates_presence_of :companies_id, :on => :create
end
