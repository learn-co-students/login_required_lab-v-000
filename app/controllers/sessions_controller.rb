class SessionsController < ApplicationController
  
  def new

  end

  def create
    session[:name] = params[:name]

    redirect_to(controller: session, action: new)
  end

  def current_user
      return head(:forbidden) unless session.include? :name
    end
  end

end
