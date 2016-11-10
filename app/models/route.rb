class Route < ActiveRecord::Base
	belongs_to :Company, optional: true
end
