class SecretsController < ApplicationController
  before_action :require_logged_in

  #require_logged_in saves us from all this logic in show
  # def show
  #   if current_user.nil?
  #     redirect_to login_path
  #   else
  #
  #     render :show
  #   end
  # end

  def show
  end

end
