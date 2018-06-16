class SecretsController < ApplicationController
    before_action :require_logged_in

    #This lab persisted no data for users, so any new user is always logged in
    def show
    end
end