class ApplicationController < ActionController::Base
  protect_from_forgery
  def currentcart
  	if (session[:cart] = nil )
  		@cart = nil
  	else
  		@cart = session[:cart]
  		cookies[:cart] = @cart
	end
end
