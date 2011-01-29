#------------------------------
#Author: Chaitanya Ram N
#Controller: Sample Units
#--------------------------------
class SampleunitsController < ApplicationController
  # GET /sampleunits
  # GET /sampleunits.xml
  def index
    @sampleunits = Sampleunit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sampleunits }
    end
  end

  # GET /sampleunits/1
  # GET /sampleunits/1.xml
  def show
    @sampleunit = Sampleunit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sampleunit }
    end
  end

  # GET /sampleunits/new
  # GET /sampleunits/new.xml
  def new
    @sampleunit = Sampleunit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sampleunit }
    end
  end

  # GET /sampleunits/1/edit
  def edit
    @sampleunit = Sampleunit.find(params[:id])
  end

  # POST /sampleunits
  # POST /sampleunits.xml
  def create
    @sampleunit = Sampleunit.new(params[:sampleunit])

    respond_to do |format|
      if @sampleunit.save
        format.html { redirect_to(@sampleunit, :notice => 'Sample Unit was successfully created.') }
        format.xml  { render :xml => @sampleunit, :status => :created, :location => @sampleunit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sampleunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sampleunits/1
  # PUT /sampleunits/1.xml
  def update
    @sampleunit = Sampleunit.find(params[:id])

    respond_to do |format|
      if @sampleunit.update_attributes(params[:sampleunit])
        format.html { redirect_to(@sampleunit, :notice => 'Sample Unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sampleunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sampleunits/1
  # DELETE /sampleunits/1.xml
  def destroy
    @sampleunit = Sampleunit.find(params[:id])
    @sampleunit.destroy

    respond_to do |format|
      format.html { redirect_to(sampleunits_url) }
      format.xml  { head :ok }
    end
  end
	
  #Search
  def search
		@query = params[:query]
		@sampleunits = Sampleunit.search @query
  end
end
