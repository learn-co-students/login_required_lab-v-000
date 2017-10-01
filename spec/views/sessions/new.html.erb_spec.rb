require 'rails_helper'

RSpec.describe "new", type: :view do
  
   it 'shows a greeting' do
     visit '/login'
     expect(page.body). to include "Welcome"
   end

   it 'allows user to login' do
    visit '/login'
    fill_in "name", :with => "Barney"
    click_button "login"
    expect(page.body). to include "Welcome, Barney"
   end
end
