class CartController < ApplicationController
  def show
  end

  def create
  	@cart = params[:cart]
  	session[:cart] = @cart
  	redirect_to product_path
  end

  def edit
  end

  def update
  end
end
