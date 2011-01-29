#Author: Chaitanya Ram
#Controller: Country Information
#==========================================
class CountriesController < ApplicationController

prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24}

  # GET /countries
  # GET /countries.xml
  def index
    @countries = Country.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @countries }
	  format.csv { send_data @countries.to_csv }
    end

  end

  # GET /countries/1
  # GET /countries/1.xml
  def show
    @country = Country.all

    respond_to do |format|
      format.html # show.html.erb
#      format.xml  { render :xml => @country }
      format.pdf { render :layout => false }
    end
  end

  # GET /countries/new
  # GET /countries/new.xml
  def new
    @country = Country.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @country }
    end
  end

  # GET /countries/1/edit
  def edit
    @country = Country.find(params[:id])
  end

  # POST /countries
  # POST /countries.xml
  def create
    @country = Country.new(params[:country])

    respond_to do |format|
      if @country.save
        format.html { redirect_to(@country, :notice => 'Country was successfully created.') }
        format.xml  { render :xml => @country, :status => :created, :location => @country }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /countries/1
  # PUT /countries/1.xml
  def update
    @country = Country.find(params[:id])

    respond_to do |format|
      if @country.update_attributes(params[:country])
        format.html { redirect_to(@country, :notice => 'Country was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.xml
  def destroy
    @country = Country.find(params[:id])
    @country.destroy

    respond_to do |format|
      format.html { redirect_to(countries_url) }
      format.xml  { head :ok }
    end
  end

	#search using thinking-sphinix
	def search
		@query = params[:query]
		@countries = Country.search @query
	end
	#end:Search

  #report using prawn	
  def report
    @country = Country.all

    respond_to do |format|
      format.html # show.html.erb
#      format.xml  { render :xml => @country }
      format.pdf { render :layout => false }
    end
  end
  #end report

end
