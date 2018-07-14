class SecretsController <ApplicationController


  def show
    if session.include? :name
      render 'show'
    else
      redirect_to login_path
    end

  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
