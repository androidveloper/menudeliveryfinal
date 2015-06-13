class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
#************ Inicio create anterior*********
# def create
#    @product = Product.new(product_params)
#
#   respond_to do |format|
#      if @product.save
#        format.html { redirect_to @product, notice: 'Product was successfully created.' }
#        format.json { render :show, status: :created, location: @product }
#      else
#       format.html { render :new }
#        format.json { render json: @product.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#*****Fin metodo create anterior********************
  
    def create
      @product = Product.create(product_params)

      respond_to do |format|
        if @product.save
          format.json { head :no_content }
          format.js
        else
          format.json { render json: @product.errors.full_messages, status: :unprocessable_entity }
        end
      
      end
    end
  
  

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  
# **********Update anterior **********  
#def update
#    respond_to do |format|
#      if @product.update(product_params)
#        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
#        format.json { render :show, status: :ok, location: @product }
#      else
#        format.html { render :edit }
#        format.json { render json: @product.errors, status: :unprocessable_entity }
#      end
#    end
#  end
# **********FIN Update anterior **********  

   def update
     respond_to do |format|
      if @product.update(product_params)
        format.json { head :no_content }
        format.js
       else
         format.json { render json: @product.errors.full_messages, status: :unprocessable_entity }
      end
     
     end
   end
  
  

  # DELETE /products/1
  # DELETE /products/1.json
# ************metodo destroy anterior
#  def destroy
#    @product.destroy
#    respond_to do |format|
#      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end
# **********FIN metodo destroy anterior

  def destroy
    @product.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :quantity)
    end
end
