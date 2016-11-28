class Retiro < ApplicationRecord
	has_and_belongs_to_many :Asignations
end
