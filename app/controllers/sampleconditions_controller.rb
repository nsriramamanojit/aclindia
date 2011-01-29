#------------------------------
#Author: Chaitanya Ram N
#Controller: Sample Conditions
#--------------------------------
class SampleconditionsController < ApplicationController
  # GET /sampleconditions
  # GET /sampleconditions.xml
  def index
    @sampleconditions = Samplecondition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sampleconditions }
    end
  end

  # GET /sampleconditions/1
  # GET /sampleconditions/1.xml
  def show
    @samplecondition = Samplecondition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @samplecondition }
    end
  end

  # GET /sampleconditions/new
  # GET /sampleconditions/new.xml
  def new
    @samplecondition = Samplecondition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @samplecondition }
    end
  end

  # GET /sampleconditions/1/edit
  def edit
    @samplecondition = Samplecondition.find(params[:id])
  end

  # POST /sampleconditions
  # POST /sampleconditions.xml
  def create
    @samplecondition = Samplecondition.new(params[:samplecondition])

    respond_to do |format|
      if @samplecondition.save
        format.html { redirect_to(@samplecondition, :notice => 'Sample Condition was successfully created.') }
        format.xml  { render :xml => @samplecondition, :status => :created, :location => @samplecondition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @samplecondition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sampleconditions/1
  # PUT /sampleconditions/1.xml
  def update
    @samplecondition = Samplecondition.find(params[:id])

    respond_to do |format|
      if @samplecondition.update_attributes(params[:samplecondition])
        format.html { redirect_to(@samplecondition, :notice => 'Sample Condition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @samplecondition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sampleconditions/1
  # DELETE /sampleconditions/1.xml
  def destroy
    @samplecondition = Samplecondition.find(params[:id])
    @samplecondition.destroy

    respond_to do |format|
      format.html { redirect_to(sampleconditions_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@sampleconditons = Samplecondition.search @query
	end
end
