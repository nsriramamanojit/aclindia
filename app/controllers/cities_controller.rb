#Author: Chaitanya Ram
#Controller: City Information
#==========================================
class CitiesController < ApplicationController
  # GET /cities
  # GET /cities.xml
  def index
    @cities = City.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.xml
  def show
	@state = State.all
	@country = Country.all
    @city = City.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/new
  # GET /cities/new.xml
  def new
	@state = State.all
	@country = Country.all
    @city = City.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/1/edit
  def edit
	@state = State.all
	@country = Country.all
    @city = City.find(params[:id])
  end

  # POST /cities
  # POST /cities.xml
  def create
    @city = City.new(params[:city])

    respond_to do |format|
      if @city.save
        format.html { redirect_to(@city, :notice => 'City was Successfully created.') }
        format.xml  { render :xml => @city, :status => :created, :location => @city }
      else
	@state = State.all
	@country = Country.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.xml
  def update
    @city = City.find(params[:id])

    respond_to do |format|
      if @city.update_attributes(params[:city])
        format.html { redirect_to(@city, :notice => 'City was successfully updated.') }
        format.xml  { head :ok }
      else
	@state = State.all
	@country = Country.all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.xml
  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to(cities_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@cities = City.search @query
	end
#method for load states
	def load_states
	#puts "#### Country Id - #{params[:id]}"
		@states = State.where(:country_id => params[:id])
			respond_to do |format|
			format.js{
			render :update do |page| 
				page[:city_state_id].replace collection_select(:city,:state_id, @states, :id, :name)
			end
					}
			end
	end
#End- States
end
