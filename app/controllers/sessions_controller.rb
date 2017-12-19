class SessionsController < ActionController::Base

  def new

  end

  def create
    if !params[:name] || (params[:name] && params[:name].empty?)
      redirect_to :root
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to :root
  end
end
