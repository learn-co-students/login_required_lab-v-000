class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:destroy]
    def create
        session[:name] = params[:name]
        redirect_to root_path
    end

    def destroy
        if current_user
            session.delete :name
        end
        redirect_to root_path
    end

    private

        def require_login
            if !params[:name] || params[:name].empty?
                redirect_to login_path 
            end
        end
end


# def create
#     return redirect_to(controller: 'sessions',
#                        action: 'new') if !params[:name] || params[:name].empty?
#     session[:name] = params[:name]
#     redirect_to controller: 'application', action: 'hello'
#   end

#   def destroy
#     session.delete :name
#     redirect_to controller: 'application', action: 'hello'
#   end