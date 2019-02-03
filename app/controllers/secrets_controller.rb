class SecretsController < ApplicationController
  before_action :current_user
  before_action :require_login


  def show
  end




def current_user
  session[:name] = params[:name]
end

def require_login
    redirect_to :controller => 'sessions', :action => 'new' unless current_user
end



end



#redirect_to :controller => 'controllername', :action => 'actionname'
