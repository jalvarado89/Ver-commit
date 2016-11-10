class Plantum < ActiveRecord::Base
	belongs_to :Companies, optional: true
end
