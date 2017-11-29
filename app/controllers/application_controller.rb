class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    session[:name]
    ## calls name of user
    #The session method is available anywhere in the Rails
    #response cycle, and it behaves like a hash
    #http://guides.rubyonrails.org/action_controller_overview.html#accessing-the-session
  end

#   before_action :require_login
#
#   private
#
#   def require_login
#       unless logged_in?
#         flash[:error] = "You must be logged in to access this section"
#         redirect_to login_url # halts request cycle
#       end
#     end
# #
end
