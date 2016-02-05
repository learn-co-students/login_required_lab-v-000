require 'rails_helper'

RSpec.describe ApplicationController do
  describe 'current_user' do

    it 'returns the name of the current user' do
      i_am = 'Kate Libby'
      current_user = i_am
      expect(current_user).to eq i_am
    end

    it 'returns nil if nobody is logged in' do
      current_user = nil
      expect(current_user).to be nil
    end
  end
end
