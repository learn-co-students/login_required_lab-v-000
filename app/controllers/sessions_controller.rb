class SessionsController<ApplicationController
  before_action :require_login, only: [:welcome]
  # if had welcome in the ApplicationController, couldve left above line out of this controller

  def welcome
    @current_user = current_user
  end
  # shouldve had the above in ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end
  # couldve done this method like:
  # def create
  #   return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
  #   session[:name] = params[:name]
  #   redirect_to controller: 'application', action: 'hello'
  # end

  def destroy
    session.delete :name
    redirect_to root_path
  end


end
