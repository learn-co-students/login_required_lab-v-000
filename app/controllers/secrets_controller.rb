class SecretsController < ActionController::Base

  def show
    if !session[:name]
      redirect_to :root
    else
      render 'secret'
    end
  end

  def secret
    return head(:forbidden) unless session.include? :name

  end
end
