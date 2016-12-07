class NumContenedor < ActiveRecord::Base
	has_many :Asignations
	has_many :Retiros, :primary_key => "id"

	validates_presence_of :Sigla, :on => :create
	validates_presence_of :Numero, :on => :create
	validates_presence_of :Marchamo, :on => :create
	validates_presence_of :Cant_Ejes, :on => :create
	validates_presence_of :asignations_id, :on => :create
end
