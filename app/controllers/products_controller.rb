#------------------------------
#Author: Chaitanya Ram N
#Controller: Product Category
#--------------------------------
class ProductsController < ApplicationController
prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24,
		  :page_size => 'A4'
#          :page_layout=>:landscape
}
  # GET /products
  # GET /products.xml
  def index
#    @products = Product.all
#pagination:
	@products = Product.all.paginate :per_page => 5, :page => params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.all
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @product }
#    end
	prawnto :filename => 'Report-Products.pdf', :inline => false

  end

  # GET /products/1
  # GET /products/1.xml
  def view
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to(products_path, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
	@category = Category.all
	@subcategory = Subcategory.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(products_path, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end

	#Search
	def search
		@query = params[:query]
		@products = Product.search @query
	end
	#End: Search

#method for load subcategories
	def load_subcategries
	#puts "#### Country Id - #{params[:id]}"
		@subcategories = Subcategory.where(:category_id => params[:id])
			respond_to do |format|
			format.js{
			render :update do |page| 
				page[:product_subcategory_id].replace collection_select(:product,:subcategory_id, @subcategories, :id, :name)
			end
					}
			end
	end
#End
end
