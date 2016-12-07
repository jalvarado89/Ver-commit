class Naviera < ActiveRecord::Base
  belongs_to :Company, optional: true
  belongs_to :Asignation, optional: true
  has_many :Cliente_Navieras

  validates_presence_of :Nombre, :on => :create
  validates_presence_of :Telefono, :on => :create
  validates_presence_of :companies_id, :on => :create
end
