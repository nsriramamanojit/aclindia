#Author: Chaitanya Ram
#Controller: Customer Information
#==========================================
class CustomersController < ApplicationController
 
prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24,
          :page_size => 'A4',
          :page_layout=>:landscape
}
  # GET /customers
  # GET /customers.xml
  def index
#    @customers = Customer.all
#pagination:
	@customers = Customer.all.paginate :per_page => 5, :page => params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.xml
  def show
    @customer = Customer.all
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @customer }
#    end
	prawnto :filename => 'Report-Customers.pdf', :inline => false
  end
  
    def view
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer }
#      format.pdf { render :layout => false }
    end
  end

  # GET /customers/new
  # GET /customers/new.xml
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.xml
  def create
    @customer = Customer.new(params[:customer])
    @user = User.find(session[:user_id])
    @customer.created_by = @user.name
    respond_to do |format|
      if @customer.save
        format.html { redirect_to(customers_path, :notice => 'Customer was successfully created.') }
        format.xml  { render :xml => @customer, :status => :created, :location => @customer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.xml
  def update
    @customer = Customer.find(params[:id])
    @user = User.find(session[:user_id])
    @customer.modified_by = @user.name
    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to(customers_path, :notice => 'Customer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.xml
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to(customers_url) }
      format.xml  { head :ok }
    end
  end
  
  	#search using thinking-sphinix
	def search
		@query = params[:query]
		@customers = Customer.search @query
	end
	#end:Search
end
