class SecretsController < ApplicationController
   before_action :require_login

   def show
     @secret = "crazy secret secret"
   end

 end