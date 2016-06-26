class SecretsController < ActionController::Base
before_action :logged_in


  def show
  
  end

  private
    def logged_in
      redirect_to "/" unless current_user
    end

end
