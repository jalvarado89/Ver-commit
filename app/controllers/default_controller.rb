class DefaultController < ApplicationController	
  layout :another_layout
  def index
  	if current_user
  	else
  		redirect_to '/login' unless current_user
  	end
  end
end
