class TestparametersController < ApplicationController
  # GET /testparameters
  # GET /testparameters.xml
  def index
    @testparameters = Testparameter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testparameters }
    end
  end

  # GET /testparameters/1
  # GET /testparameters/1.xml
  def show
    @testparameter = Testparameter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testparameter }
    end
  end

  # GET /testparameters/new
  # GET /testparameters/new.xml
  def new
    @testparameter = Testparameter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testparameter }
    end
  end

  # GET /testparameters/1/edit
  def edit
    @testparameter = Testparameter.find(params[:id])
  end

  # POST /testparameters
  # POST /testparameters.xml
  def create
    @testparameter = Testparameter.new(params[:testparameter])

    respond_to do |format|
      if @testparameter.save
        format.html { redirect_to(@testparameter, :notice => 'Testparameter was successfully created.') }
        format.xml  { render :xml => @testparameter, :status => :created, :location => @testparameter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testparameter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testparameters/1
  # PUT /testparameters/1.xml
  def update
    @testparameter = Testparameter.find(params[:id])

    respond_to do |format|
      if @testparameter.update_attributes(params[:testparameter])
        format.html { redirect_to(@testparameter, :notice => 'Testparameter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testparameter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testparameters/1
  # DELETE /testparameters/1.xml
  def destroy
    @testparameter = Testparameter.find(params[:id])
    @testparameter.destroy

    respond_to do |format|
      format.html { redirect_to(testparameters_url) }
      format.xml  { head :ok }
    end
  end
	def search
		@query = params[:query]
		@testparameters = Testparameter.search @query
	end
end
