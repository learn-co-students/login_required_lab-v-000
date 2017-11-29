class SessionsController < ApplicationController
  def create
    session[:name] = params[:name]
     if session[:name].present?
       #def present?!blank? end From this we can say that an object will return true if it is NOT blank.
        #https://www.ruby-forum.com/topic/2306965
       redirect_to '/sessions/new'
     else
       redirect_to '/'
     end
  end

  def destroy
      session.delete :name
      redirect_to login_path
  end
end
#https://www.railstutorial.org/book/basic_login
