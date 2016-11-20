class Plantum < ActiveRecord::Base
	belongs_to :Companies, optional: true
	belongs_to :Asignation, optional: true
end
