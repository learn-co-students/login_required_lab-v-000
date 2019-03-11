class SessionsController < ApplicationController
  before_action :require_logged_in

  # def create
  #   binding.pry
  #   # redirect_to controller: 'sessions', action: 'new' unless current_user
  #   # session[:name] = params[:name]
  # end

end
