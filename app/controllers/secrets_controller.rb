class SecretsController < ApplicationController
    before_action :require_login
   
    def show
    end

    private
   
    def require_login
      #return head(:forbidden) unless session.include? :user_id  <- previous section
      redirect_to '/login' unless session.include? :name
      #Made to dry each CRUD 
      #view toggle wordwarp helps
    end

    #This is a call to the ActionController class method before_action. 
    #before_action registers a filter. A filter is a method which runs before, after, or around, a controller's action.
    # In this case, the filter runs before all DocumentsController's actions, and kicks requests out with 403 Forbidden unless they're logged in.
  end