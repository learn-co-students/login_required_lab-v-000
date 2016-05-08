class SecretsController < ApplicationController
  def show
    if current_user
      render :show
    else
      redirect_to new_session_path
    end
  end
end

# can also do:

# class SecretsController < ApplicationController
#    before_action :require_login
#    def show
#    end
 
#    private
#    def require_login
#      redirect_to '/sessions/new' unless session.include? :name 
#    end
#  end