class ApplicationController < ActionController::Base
  protect_from_forgery
  def @cart
  	if (session[:cart] = nil )
  		@cart = nil
  	else
  		@cart = session[:cart]
  		cookies[:cart] = @cart
end
end
