#Author: Chaitanya Ram
#Controller: Central Lab Information
#==========================================
class LabcentralsController < ApplicationController
  # GET /labcentrals
  # GET /labcentrals.xml
  def index
    @labcentrals = Labcentral.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @labcentrals }
    end
  end

  # GET /labcentrals/1
  # GET /labcentrals/1.xml
  def show
    @labcentral = Labcentral.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @labcentral }
    end
  end

  # GET /labcentrals/new
  # GET /labcentrals/new.xml
  def new
    @labcentral = Labcentral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labcentral }
    end
  end

  # GET /labcentrals/1/edit
  def edit
    @labcentral = Labcentral.find(params[:id])
  end

  # POST /labcentrals
  # POST /labcentrals.xml
  def create
    @labcentral = Labcentral.new(params[:labcentral])
#	@labcentral.labid = @labcentral.max

    respond_to do |format|
      if @labcentral.save
        format.html { redirect_to(@labcentral, :notice => 'Central Lab Successfully Created.') }
        format.xml  { render :xml => @labcentral, :status => :created, :location => @labcentral }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @labcentral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /labcentrals/1
  # PUT /labcentrals/1.xml
  def update
    @labcentral = Labcentral.find(params[:id])

    respond_to do |format|
      if @labcentral.update_attributes(params[:labcentral])
        format.html { redirect_to(@labcentral, :notice => 'Central Lab was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @labcentral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /labcentrals/1
  # DELETE /labcentrals/1.xml
  def destroy
    @labcentral = Labcentral.find(params[:id])
    @labcentral.destroy

    respond_to do |format|
      format.html { redirect_to(labcentrals_url) }
      format.xml  { head :ok }
    end
  end
	def search
		@query = params[:query]
		@labcentrals = Labcentral.search @query
	end
end
