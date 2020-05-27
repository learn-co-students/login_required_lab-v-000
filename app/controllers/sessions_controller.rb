class SessionsController < ApplicationController
  def new
    if current_user
      # I added this; it redirects to the welcome page if you're already logged in.
      redirect_to root_path
    end
  end

  def create
    if params[:name].present?
      # current_user = params[:name] # This doesn't work.
      session[:name] = params[:name]
      redirect_to root_path
    else
      # render :new # This works, but the tests are expecting a redirect.
      redirect_to login_path
    end
  end

  def destroy
    # require_login and return # See ApplicationController
    # Somehow, I don't need this; maybe #require_login returns automatically if called from #before_action?

    session.delete :name
    redirect_to login_path
  end
end