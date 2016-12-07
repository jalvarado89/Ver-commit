class Plantum < ActiveRecord::Base
	belongs_to :Companies, optional: true
	belongs_to :Asignation, optional: true

	validates_presence_of :Nombre, :on => :create
	validates_presence_of :Telefono, :on => :create
	validates_presence_of :companies_id, :on => :create
end
