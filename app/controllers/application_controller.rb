class ApplicationController < ActionController::Base
    helper_method :current_user    

	private

  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  def require_user 
  	redirect_to '/login' unless current_user 
  end

  def another_layout
  	if current_user.tipo == "Administrador"
        "layout"
    else
        "invitado"
    end
  end

end
