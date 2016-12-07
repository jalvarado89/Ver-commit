class Predio < ActiveRecord::Base
	belongs_to :predios1, :class_name => “Asignation”, :foreign_key => “predios_id”, optional: true
	belongs_to :predios2, :class_name => “Asignation”, :foreign_key => “predios_id2”, optional: true
	belongs_to :Company, optional: true
end
