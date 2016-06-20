class SecretsController < ApplicationController
  before_action :logged_in


  def show
    #tests if #current_user (i.e., session[:name] has value)
    #renders secrets/show.html.erb
  end

  private
    def logged_in
      redirect_to "/" unless current_user
    end
end
