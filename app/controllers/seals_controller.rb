#------------------------------
#Author: Chaitanya Ram N
#Controller: Seal
#--------------------------------
class SealsController < ApplicationController
  # GET /seals
  # GET /seals.xml
  def index
    @seals = Seal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seals }
    end
  end

  # GET /seals/1
  # GET /seals/1.xml
  def show
    @seal = Seal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seal }
    end
  end

  # GET /seals/new
  # GET /seals/new.xml
  def new
    @seal = Seal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seal }
    end
  end

  # GET /seals/1/edit
  def edit
    @seal = Seal.find(params[:id])
  end

  # POST /seals
  # POST /seals.xml
  def create
    @seal = Seal.new(params[:seal])

    respond_to do |format|
      if @seal.save
        format.html { redirect_to(@seal, :notice => 'Seal was successfully created.') }
        format.xml  { render :xml => @seal, :status => :created, :location => @seal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seals/1
  # PUT /seals/1.xml
  def update
    @seal = Seal.find(params[:id])

    respond_to do |format|
      if @seal.update_attributes(params[:seal])
        format.html { redirect_to(@seal, :notice => 'Seal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seals/1
  # DELETE /seals/1.xml
  def destroy
    @seal = Seal.find(params[:id])
    @seal.destroy

    respond_to do |format|
      format.html { redirect_to(seals_url) }
      format.xml  { head :ok }
    end
  end

	#Search
	def search
		@query = params[:query]
		@seals = Seal.search @query
	end
end
