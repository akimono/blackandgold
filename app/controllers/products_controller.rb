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
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      	else
        format.html { render action: "new" }
      	end
   	 end
end
	def show
		@product = Product.find(params[:id])
		end
		def edit
			@product = Product.find(params[:id])
		end
		def update
			@product = Product.find(params[:id])

      respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
		end
	end
end
