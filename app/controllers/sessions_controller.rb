require 'pry'

class SessionsController < ApplicationController
  def hello
  end

  def login
  end

  def new
  end

  def create
    binding.pry
    session[:name] = params[:name]
  end

end
