class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      @term = Term.last(:order => "updated_at asc")
	#sign_in user
	if (@term.updated_at < user.created_at)
      	  sign_in user
      	  redirect_to user
	else
	  redirect_to terms_path
	end
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
