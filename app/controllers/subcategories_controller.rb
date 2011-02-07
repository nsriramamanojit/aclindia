#------------------------------
#Author: Chaitanya Ram N
#Controller: Commodity SubCategory (based on Category)
#--------------------------------
class SubcategoriesController < ApplicationController

prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24,
		  :page_size => 'A4'
#          :page_layout=>:landscape
}
  # GET /subcategories
  # GET /subcategories.xml
  def index
#    @subcategories = Subcategory.all
#pagination:
	@subcategories = Subcategory.all.paginate :per_page => 5, :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subcategories }
    end
  end

  # GET /subcategories/1
  # GET /subcategories/1.xml
  def show
    @subcategory = Subcategory.all
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @subcategory }
#    end
	prawnto :filename => 'Report-SubCategories.pdf', :inline => false
  end

  # GET /subcategories/1
  # GET /subcategories/1.xml
  def view
	@category = Category.all
    @subcategory = Subcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subcategory }
    end
  end
  # GET /subcategories/new
  # GET /subcategories/new.xml
  def new
	@category = Category.all
    @subcategory = Subcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subcategory }
    end
  end

  # GET /subcategories/1/edit
  def edit
	@category = Category.all
    @subcategory = Subcategory.find(params[:id])
  end

  # POST /subcategories
  # POST /subcategories.xml
  def create
    @subcategory = Subcategory.new(params[:subcategory])

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to(subcategories_path, :notice => 'Subcategory Successfully Created.') }
        format.xml  { render :xml => @subcategory, :status => :created, :location => @subcategory }
      else
	@category = Category.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subcategories/1
  # PUT /subcategories/1.xml
  def update

    @subcategory = Subcategory.find(params[:id])

    respond_to do |format|
      if @subcategory.update_attributes(params[:subcategory])
        format.html { redirect_to(subcategories_path, :notice => 'Subcategory Successfully Updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategories/1
  # DELETE /subcategories/1.xml
  def destroy
    @subcategory = Subcategory.find(params[:id])
    @subcategory.destroy

    respond_to do |format|
      format.html { redirect_to(subcategories_url) }
      format.xml  { head :ok }
    end
  end

	#search
	def search
		@query = params[:query]
		@subcategories = Subcategory.search @query
	end
end
