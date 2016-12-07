class Retiro < ActiveRecord::Base
	belongs_to :Asignation, optional: true, :primary_key => "id", :foreign_key => "asignations_id"
	
	belongs_to :Num_Contenedors, optional: true, :primary_key => "id", :foreign_key => "num_contenedors_id"
	belongs_to :Drivers, optional: true, :primary_key => "id", :foreign_key => "drivers_id"
	belongs_to :Trucks, optional: true, :primary_key => "id", :foreign_key => "trucks_id"
	belongs_to :Implements, optional: true, :primary_key => "id", :foreign_key => "implements_id"

	validates_presence_of :num_contenedors_id, :on => :create
	validates_presence_of :drivers_id, :on => :create
	validates_presence_of :trucks_id, :on => :create
	validates_presence_of :implements_id, :on => :create
	validates_presence_of :asignations_id, :on => :create
end
