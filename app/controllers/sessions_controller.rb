class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
        # succesed
        log_in user
        redirect_to user
    else
        #failed
        render 'new'
    end
  end
end
