class SecretsController < ApplicationController

#before_action :require_login

def show
  if !session.include? :name
    redirect_to '/sessions/new'
  else
    render :show
  end
end

#private
#def require_login
  #return head(:forbidden) unless session.include? :name
#end

end
