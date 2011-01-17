class SampleplacesController < ApplicationController
  # GET /sampleplaces
  # GET /sampleplaces.xml
  def index
    @sampleplaces = Sampleplace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sampleplaces }
    end
  end

  # GET /sampleplaces/1
  # GET /sampleplaces/1.xml
  def show
    @sampleplace = Sampleplace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sampleplace }
    end
  end

  # GET /sampleplaces/new
  # GET /sampleplaces/new.xml
  def new
    @sampleplace = Sampleplace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sampleplace }
    end
  end

  # GET /sampleplaces/1/edit
  def edit
    @sampleplace = Sampleplace.find(params[:id])
  end

  # POST /sampleplaces
  # POST /sampleplaces.xml
  def create
    @sampleplace = Sampleplace.new(params[:sampleplace])

    respond_to do |format|
      if @sampleplace.save
        format.html { redirect_to(@sampleplace, :notice => 'Sampleplace was successfully created.') }
        format.xml  { render :xml => @sampleplace, :status => :created, :location => @sampleplace }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sampleplace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sampleplaces/1
  # PUT /sampleplaces/1.xml
  def update
    @sampleplace = Sampleplace.find(params[:id])

    respond_to do |format|
      if @sampleplace.update_attributes(params[:sampleplace])
        format.html { redirect_to(@sampleplace, :notice => 'Sampleplace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sampleplace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sampleplaces/1
  # DELETE /sampleplaces/1.xml
  def destroy
    @sampleplace = Sampleplace.find(params[:id])
    @sampleplace.destroy

    respond_to do |format|
      format.html { redirect_to(sampleplaces_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@sampleplaces = Sampleplace.search @query
	end
end
