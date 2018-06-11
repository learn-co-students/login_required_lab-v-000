class SecretsController < ApplicationController
  before_action :require_login

  def show
    #if a user is not logged in, redirect to the login page.
    #if a user is logged in, render the secret in show.html.erb
  end

  private 
  def require_login
    redirect_to login_path unless session.include? :name
  end
end