#------------------------------
#Author: Chaitanya Ram N
#Controller: Test Methods
#--------------------------------
class TestmethodsController < ApplicationController
  # GET /testmethods
  # GET /testmethods.xml
  def index
    @testmethods = Testmethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testmethods }
    end
  end

  # GET /testmethods/1
  # GET /testmethods/1.xml
  def show
    @testmethod = Testmethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testmethod }
    end
  end

  # GET /testmethods/new
  # GET /testmethods/new.xml
  def new
    @testmethod = Testmethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testmethod }
    end
  end

  # GET /testmethods/1/edit
  def edit
    @testmethod = Testmethod.find(params[:id])
  end

  # POST /testmethods
  # POST /testmethods.xml
  def create
    @testmethod = Testmethod.new(params[:testmethod])

    respond_to do |format|
      if @testmethod.save
        format.html { redirect_to(@testmethod, :notice => 'Test Method was successfully created.') }
        format.xml  { render :xml => @testmethod, :status => :created, :location => @testmethod }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testmethod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testmethods/1
  # PUT /testmethods/1.xml
  def update
    @testmethod = Testmethod.find(params[:id])

    respond_to do |format|
      if @testmethod.update_attributes(params[:testmethod])
        format.html { redirect_to(@testmethod, :notice => 'Test Method was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testmethod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testmethods/1
  # DELETE /testmethods/1.xml
  def destroy
    @testmethod = Testmethod.find(params[:id])
    @testmethod.destroy

    respond_to do |format|
      format.html { redirect_to(testmethods_url) }
      format.xml  { head :ok }
    end
  end

	#search
	def search
		@query = params[:query]
		@testmethods = Testmethod.search @query
	end
end
