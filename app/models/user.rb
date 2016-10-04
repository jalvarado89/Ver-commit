class User < ApplicationRecord	  
  	  	  	  
	  validates_presence_of :password_digest, :on => :create
	  validates_presence_of :email
	  validates_uniqueness_of :email
	  validates :password_digest, presence: true, length: { minimum: 8 }	  	  
	  	  
end
