class TeststandardsController < ApplicationController
  # GET /teststandards
  # GET /teststandards.xml
  def index
    @teststandards = Teststandard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teststandards }
    end
  end

  # GET /teststandards/1
  # GET /teststandards/1.xml
  def show
    @teststandard = Teststandard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @teststandard }
    end
  end

  # GET /teststandards/new
  # GET /teststandards/new.xml
  def new
    @teststandard = Teststandard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @teststandard }
    end
  end

  # GET /teststandards/1/edit
  def edit
    @teststandard = Teststandard.find(params[:id])
  end

  # POST /teststandards
  # POST /teststandards.xml
  def create
    @teststandard = Teststandard.new(params[:teststandard])

    respond_to do |format|
      if @teststandard.save
        format.html { redirect_to(@teststandard, :notice => 'Test Standard was successfully created.') }
        format.xml  { render :xml => @teststandard, :status => :created, :location => @teststandard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @teststandard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teststandards/1
  # PUT /teststandards/1.xml
  def update
    @teststandard = Teststandard.find(params[:id])

    respond_to do |format|
      if @teststandard.update_attributes(params[:teststandard])
        format.html { redirect_to(@teststandard, :notice => 'Test Standard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @teststandard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teststandards/1
  # DELETE /teststandards/1.xml
  def destroy
    @teststandard = Teststandard.find(params[:id])
    @teststandard.destroy

    respond_to do |format|
      format.html { redirect_to(teststandards_url) }
      format.xml  { head :ok }
    end
  end

	#search
	def search
		@query = params[:query]
		@teststandards = Teststandard.search @query
	end
end
