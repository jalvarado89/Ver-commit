class Asignation < ActiveRecord::Base
	has_and_belongs_to_many :Retiros
	belongs_to :Num_Contenedor, optional: true
	has_many :Companies
	has_many :Predios
	has_many :Plantum
	has_many :Navieras
	has_many :Cliente_Navieras
	has_many :Routes

	validates_presence_of :companies_id, :on => :create
	validates_presence_of :predios_id, :on => :create
	validates_presence_of :predios_id2, :on => :create
	validates_presence_of :plantum_id, :on => :create
	validates_presence_of :navieras_id, :on => :create
	validates_presence_of :cliente_navieras_id, :on => :create
	validates_presence_of :routes_id, :on => :create	
end
