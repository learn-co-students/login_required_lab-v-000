class SecretsController < ApplicationController
   def show
       require_login
       @secret="I luv telletubbies."
   end
    
end