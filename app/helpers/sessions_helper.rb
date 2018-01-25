module SessionsHelper

  def login
    session[:name] = params[:name]
  end

  def logout
    session.destroy
    @current_user = nil
  end
end
