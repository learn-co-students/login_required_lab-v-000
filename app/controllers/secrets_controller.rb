# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/login-required-lab
# Write a SecretsController using a before_action to prevent any route from
# being accessed without logging in.
# new code start
class SecretsController < ApplicationController
  before_action :require_logged_in
   def show
   end
end
# new code end
