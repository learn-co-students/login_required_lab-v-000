module SecretsHelper
  def logged_in
   !!session[:name]
  end
end
