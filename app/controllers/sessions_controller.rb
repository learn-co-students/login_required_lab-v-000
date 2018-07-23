class SessionsController < ApplicationController
  def new
  end

  def show

  end

  def create
      if current_user == nil || current_user.empty?
          redirect_to '/sessions/new'
      else
          redirect_to '/secrets/shows'
      end
  end

  def destroy
      if current_user != nil
          session.delete :name
      end
      redirect_to '/sessions/new'
  end
end
