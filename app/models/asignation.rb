class Asignation < ActiveRecord::Base
	has_many :Retiros, :primary_key => "id"
	
	belongs_to :Num_Contenedor, optional: true
	has_many :Companies
	has_many :occurances_as_predios, :class_name => “Predio”, :foreign_key => “predios_id”
	has_many :occurances_as_predios2, :class_name => “Predio”, :foreign_key => “predios_id2”
	has_many :Plantum
	has_many :Navieras
	has_many :Cliente_Navieras
	has_many :Routes

	validates_presence_of :Num_Semana, :on => :create
	validates_presence_of :companies_id, :on => :create
	validates_presence_of :predios_id, :on => :create
	validates_presence_of :predios_id2, :on => :create
	validates_presence_of :plantum_id, :on => :create
	validates_presence_of :navieras_id, :on => :create
	validates_presence_of :cliente_navieras_id, :on => :create
	validates_presence_of :routes_id, :on => :create	
end
