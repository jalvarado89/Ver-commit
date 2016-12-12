class SessionsController < ApplicationController
  layout 'default'
	def new
  end

  def create 
    if (@user = User.where(email: params[:email], password_digest: params[:password_digest]).first)      
      if (@user.Activo)
        session[:current_user_id] = @user.id
        redirect_to root_url        
      else
        redirect_to login_path, notice: 'Error. Su cuenta no ha sido activada'
      end
    else      
      render 'new'
    end
  end

  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil    
    redirect_to login_path
  end
end
