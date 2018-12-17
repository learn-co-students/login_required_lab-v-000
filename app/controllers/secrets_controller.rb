class SecretsController < ApplicationController
  def show
	#if logged in direct to show page with secret link
	#if user not logged in redirect to login page
	if logged_in?
	  render :top_secret
    else
	  redirect_to '/'
    end
  end
end
