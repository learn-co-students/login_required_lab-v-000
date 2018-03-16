  #rails g controller sessions  --no-helper --no-assets --no-controller-specs

class SessionsController < ApplicationController
  def new
    #raise params.inspect
  end
  def create
    #create a name attribute in the session set to the name in teh previous for given by params
    #name cannot accept nil or blank. if that is put in redirect back to new

    if !params[:name] || params[:name] ==""  #params[:name].empty? works as well
          redirect_to controller: 'sessions', action: 'new'# '/sessions/new'
    else
          session[:name] = params[:name]
          redirect_to controller: 'application', action: 'hello'
    end

    #solution
            #return redirect_to(controller: 'sessions',
            #                   action: 'new') if !params[:name] || params[:name].empty?
            #session[:name] = params[:name]
            #redirect_to controller: 'application', action: 'hello'
            #end

  end
    #deleting the user session
  def destroy
      session.delete :name
      redirect_to '/'
  end
end
