class ProductsController < ApplicationController
  def index
  	@product = Product.all
      respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @product
    
  end
  def new
  	   @product = Product.new
       respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
  end
end
