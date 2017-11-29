class SecretsController < ApplicationController
  before_action :login_required
  #a call to the ActionController class method before_action,registers a filter
  #filter is a method which runs before, after, or around, a controller's action.
  #In this case, the filter runs before all SecretsController's actions,
  #and kicks requests out with redirect to root '/' unless they're logged in.
  def show
  end
  private
  def login_required
    redirect_to '/' unless session.include? :name
  end
end
