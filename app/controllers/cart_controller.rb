class CartController < ApplicationController
  def show
  end

  def create
  	
  	session[:cart] = session[:cart]+params[:cart]
  	redirect_to controller: 'products', action: 'index'
  end

  def edit
  end

  def update
  end
end
