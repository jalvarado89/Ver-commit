class Naviera < ActiveRecord::Base
  belongs_to :company, optional: true
  belongs_to :Asignation, optional: true
  has_many :Cliente_Navieras
end
