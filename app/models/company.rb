class Company < ActiveRecord::Base	
	has_many :navieras
	belongs_to :Asignation, optional: true
	has_many :Users
end
