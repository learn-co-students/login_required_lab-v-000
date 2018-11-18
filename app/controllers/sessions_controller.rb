class SessionsController < ApplicationController

  def new
    
  end

  def create
    if params[:name] == [] || params[:name] == nil
      render :create
    else
    current_user = params[:name]
    redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'create'
  end

end
