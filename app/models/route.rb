class Route < ActiveRecord::Base
	belongs_to :Company, optional: true
	belongs_to :Asignation, optional: true
end
