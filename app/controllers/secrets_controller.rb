class SecretsController < ApplicationController
    before_action :require_login
      
    #  note: the session exist for us already.... futher in the lesson we will have to code for it
    
    def show
      
    end

    private

    def require_login
          redirect_to root_path unless current_user      
    end

end
