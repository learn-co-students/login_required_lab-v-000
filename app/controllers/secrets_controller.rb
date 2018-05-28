class SecretsController < ApplicationController

  def show
    #  This method redirects people to the sessions#new page if they aren't logged in
    #  Need to use before login to make this happen. Don't used redirect_to in this method
    # Actions for this method comes from the before_action in ApplicationController
  end
end
