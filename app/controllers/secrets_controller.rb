class SecretsController < ApplicationController

  def new
  end

  def show
    if !current_user
      redirect_to :controller => "sessions", :action => "new"
    end
  end

end
