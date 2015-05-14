class CartController < ApplicationController
  def show
  end

  def create
  	@cart = params[:cart]
  	session[:cart] = @cart
  	redirect_to controller: 'product', action: 'index'
  end

  def edit
  end

  def update
  end
end
