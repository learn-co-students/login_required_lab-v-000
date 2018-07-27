class SecretsController < ApplicationController


before_action :require_login


def index
end


def show
  redirect_to controller: 'sessions', action: 'new' unless session[:name]
end



private

def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end



end
