class Truck < ActiveRecord::Base
	belongs_to :Driver, optional: true
	has_many :Implements
	has_many :Retiros, :primary_key => "id"

	validates_presence_of :Placa, :on => :create
	validates_presence_of :Modelo, :on => :create
	validates_presence_of :Marca, :on => :create
	validates_presence_of :drivers_id, :on => :create
end