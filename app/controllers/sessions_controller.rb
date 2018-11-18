class SessionsController < ApplicationController

  def new
  end

  def create
    return render :create if :name == [] || :name == nil
    session[:name] = params[:name]
    redirect_to controller: 'sessions', action: 'new'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'create'
  end

end
