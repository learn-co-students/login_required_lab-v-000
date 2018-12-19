require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  it "shows login button" do
    render 
    expect(rendered).to include '/login'
  end

end
