require 'rails_helper'
RSpec.describe "secrets/show.html.erb", type: :view do

  it "renders the secret" do
     render :template => "secrets/show.html.erb"
  end
  end