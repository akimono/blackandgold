class CartController < ApplicationController
  def show
  end

  def create
  	if (session[:cart] = nil )
  	session[:cart] = 'A1B'+params[:cart]
  	redirect_to controller: 'products', action: 'index'
  else
  	session[:cart] = session[:cart]+'A1B'+params[:cart]
  	redirect_to controller: 'products', action: 'index'
  end
  end

  def edit
  end

  def update
  end
  def destroy
  	session[:cart] = nil
  	redirect_to controller: 'products', action: 'index'
  end
end
