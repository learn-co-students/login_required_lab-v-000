class SecretsController < ActionController::Base

  def show
    if !session[:name]
      redirect_to :root
    else
      render 'secret'
    end
  end
end
