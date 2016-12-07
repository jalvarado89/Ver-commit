class Predio < ActiveRecord::Base
	belongs_to :Asignation, optional: true
	belongs_to :Company, optional: true
end
