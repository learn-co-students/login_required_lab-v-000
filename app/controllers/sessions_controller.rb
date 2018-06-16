class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: "sessions", action: "new") if !params[:name] || params[:name].empty?
    #consider adding these conditions as well as returning error if not logged in 
    # because !params[:name] is part of authentication and also the user could just hit enter
    #NOTICE the use of parentheses after redirect_to in this situation of multiple operations

    session[:name] = params[:name]
    redirect_to controller: "application", action: "hello"
  end

  def destroy
    # unless !session[:name]
    session.delete :name
    #you don't need to specify if the session has a name or not because we can use :name as 
    #  an argument to delete only what has a name ... and :name is available through ApplicationController
    #??? use delete here, not destroy, because destroy is only for when there is persisted data?
    redirect_to controller: "sessions", action: "new"
    #as long as you have a redirect that follows correct routes, there's no need for a destroy view
  end

  # def show
  #   # where the user will be welcomed
  # end
end
