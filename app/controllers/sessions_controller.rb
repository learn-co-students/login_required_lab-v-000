class SessionsController <ApplicationController
before_action :require_login, only: [:create]
def create
  session[:name]=params[:name]
  redirect_to controller: 'secrets', action: 'show'
end

def new
end

def destroy
  session.delete(:name)
  redirect_to controller: 'sessions', action: 'new'
end

private


def require_login
  redirect_to(controller: 'sessions', action: 'new') unless  params[:name] && !params[:name].empty?
end

end
