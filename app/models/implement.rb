class Implement < ActiveRecord::Base
	belongs_to :Truck, optional: true
	has_many :Retiros, :primary_key => "id"

	validates_presence_of :Num_Chasis, :on => :create
	validates_presence_of :Num_Placa, :on => :create
	validates_presence_of :Empresa, :on => :create
	validates_presence_of :trucks_id, :on => :create
end
