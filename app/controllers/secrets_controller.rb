# class SecretsController < ApplicationController
#   before_action :require_login
#   # skip_before_action :require_login, only:[:index]
#
#   def show
#   end
#
# end


class SecretsController < ApplicationController
  before_action :require_logged_in

  def show
  end
end
