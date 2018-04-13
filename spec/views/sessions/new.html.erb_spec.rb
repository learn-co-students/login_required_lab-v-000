require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  it "renders the login page" do
     render :template => "sessions/new.html.erb"
  end
  end
