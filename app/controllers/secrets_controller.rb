class SecretsController < ApplicationController
    before_action :require_logged_in
    # get show
    # should redirect to login if you're not logged in
    # should show you the secret if you're logged in
    def show
    end
end