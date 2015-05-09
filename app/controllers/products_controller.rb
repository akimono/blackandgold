class ProductsController < ApplicationController
  def index
  	@product = Product.all
      respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @product}
  	end
  end
  def new
  	   @product = Product.new
       respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
  	end
  end
    def create
    @product = Product.new(params[:product])

    respond_to do |format|
     	 if @product.save
        format.html { redirect_to :controller => 'products', :action => 'show', :id => @product.id, notice: "Product was successfully created." }
      	else
        format.html { render action: "new" }
      	end
   	 end
end
end
