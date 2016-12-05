class NumContenedor < ActiveRecord::Base
	has_many :Asignations
	has_many :Retiros, :primary_key => "id"
end
