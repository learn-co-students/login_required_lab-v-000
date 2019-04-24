class SessionsController < ApplicationController

  def show
    
  end

  # describe 'create' do
  #   it 'redirects to login page if :name is nil' do
  #     post :create, params: { name: nil }
  #     expect(response).to redirect_to controller: 'sessions', action: 'new'
  #   end


end




#   it 'redirects to login page if :name is empty' do
#     post :create, params: { name: '' }
#     expect(response).to redirect_to controller: 'sessions', action: 'new'
#   end

#   it 'sets session[:name] if :name was given' do
#     me = 'Werner Brandes'
#     post :create, params: { name: me }
#     expect(@request.session[:name]).to eq me
#   end
# end
