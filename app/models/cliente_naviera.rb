class ClienteNaviera < ActiveRecord::Base
	belongs_to :Naviera, optional: true
	belongs_to :Asignation, optional: true

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Telefono, :on => :create
	validates_presence_of :navieras_id, :on => :create
end
