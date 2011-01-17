class PackingsController < ApplicationController
  # GET /packings
  # GET /packings.xml
  def index
    @packings = Packing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @packings }
    end
  end

  # GET /packings/1
  # GET /packings/1.xml
  def show
    @packing = Packing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @packing }
    end
  end

  # GET /packings/new
  # GET /packings/new.xml
  def new
    @packing = Packing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @packing }
    end
  end

  # GET /packings/1/edit
  def edit
    @packing = Packing.find(params[:id])
  end

  # POST /packings
  # POST /packings.xml
  def create
    @packing = Packing.new(params[:packing])

    respond_to do |format|
      if @packing.save
        format.html { redirect_to(@packing, :notice => 'Packing was successfully created.') }
        format.xml  { render :xml => @packing, :status => :created, :location => @packing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @packing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /packings/1
  # PUT /packings/1.xml
  def update
    @packing = Packing.find(params[:id])

    respond_to do |format|
      if @packing.update_attributes(params[:packing])
        format.html { redirect_to(@packing, :notice => 'Packing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @packing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /packings/1
  # DELETE /packings/1.xml
  def destroy
    @packing = Packing.find(params[:id])
    @packing.destroy

    respond_to do |format|
      format.html { redirect_to(packings_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@packings = Packing.search @query
	end
end
