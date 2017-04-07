class SecretsController < ApplicationController
   def show
       require_login
       @secret="I open-mouth kissed a horse once."
   end
    
end