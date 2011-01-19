#------------------------------
#Author: Chaitanya Ram N
#Controller: Test Requires
#--------------------------------
class TestrequiresController < ApplicationController
  # GET /testrequires
  # GET /testrequires.xml
  def index
    @testrequires = Testrequire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testrequires }
    end
  end

  # GET /testrequires/1
  # GET /testrequires/1.xml
  def show
    @testrequire = Testrequire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testrequire }
    end
  end

  # GET /testrequires/new
  # GET /testrequires/new.xml
  def new
    @testrequire = Testrequire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testrequire }
    end
  end

  # GET /testrequires/1/edit
  def edit
    @testrequire = Testrequire.find(params[:id])
  end

  # POST /testrequires
  # POST /testrequires.xml
  def create
    @testrequire = Testrequire.new(params[:testrequire])

    respond_to do |format|
      if @testrequire.save
        format.html { redirect_to(@testrequire, :notice => 'Testrequire was successfully created.') }
        format.xml  { render :xml => @testrequire, :status => :created, :location => @testrequire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testrequire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testrequires/1
  # PUT /testrequires/1.xml
  def update
    @testrequire = Testrequire.find(params[:id])

    respond_to do |format|
      if @testrequire.update_attributes(params[:testrequire])
        format.html { redirect_to(@testrequire, :notice => 'Testrequire was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testrequire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testrequires/1
  # DELETE /testrequires/1.xml
  def destroy
    @testrequire = Testrequire.find(params[:id])
    @testrequire.destroy

    respond_to do |format|
      format.html { redirect_to(testrequires_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@testrequires = Testrequire.search @query
	end
end
