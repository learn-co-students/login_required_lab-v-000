class SecretsController < ApplicationController

def show
  if current_user
    render 'show'
  else
    redirect_to '/'
  end
end

end
