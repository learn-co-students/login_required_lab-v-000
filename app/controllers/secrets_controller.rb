class SecretsController <ApplicationController
    before_filter :require_login

  def show
    @user = current_user
  end

  def secret
  end

  private
  
  def require_login
    redirect_to "/" unless current_user
  end
end

