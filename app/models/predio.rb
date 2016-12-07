class Predio < ActiveRecord::Base
	belongs_to :Asignation, optional: true
	belongs_to :Company, optional: true

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Telefono, :on => :create
	validates_presence_of :companies_id, :on => :create
end
