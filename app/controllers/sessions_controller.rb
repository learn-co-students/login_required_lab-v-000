class SessionsController < ApplicationController



  def create
    # binding.pry
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
  end

  def destroy
    if current_user
      session[:name] = nil
    end
    redirect_to(controller: 'sessions', action: 'destroy')
  end
end
