class SessionsController < ApplicationController
	layout 'layout'
	def new
    end

    def create
    if user = User.find_by(params[:username], params[:password_digest])
      session[:current_user_id] = user.id
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end
