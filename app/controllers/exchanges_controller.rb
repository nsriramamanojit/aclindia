#------------------------------
#Author: Chaitanya Ram N
#Controller: Exchange Information
#--------------------------------
class ExchangesController < ApplicationController
  # GET /exchanges
  # GET /exchanges.xml
  def index
    @exchanges = Exchange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exchanges }
    end
  end

  # GET /exchanges/1
  # GET /exchanges/1.xml
  def show
    @exchange = Exchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exchange }
    end
  end

  # GET /exchanges/new
  # GET /exchanges/new.xml
  def new
    @exchange = Exchange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exchange }
    end
  end

  # GET /exchanges/1/edit
  def edit
    @exchange = Exchange.find(params[:id])
  end

  # POST /exchanges
  # POST /exchanges.xml
  def create
    @exchange = Exchange.new(params[:exchange])

    respond_to do |format|
      if @exchange.save
        format.html { redirect_to(@exchange, :notice => 'Exchange was Successfully Created.') }
        format.xml  { render :xml => @exchange, :status => :created, :location => @exchange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exchanges/1
  # PUT /exchanges/1.xml
  def update
    @exchange = Exchange.find(params[:id])

    respond_to do |format|
      if @exchange.update_attributes(params[:exchange])
        format.html { redirect_to(@exchange, :notice => 'Exchange was Successfully Updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exchange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exchanges/1
  # DELETE /exchanges/1.xml
  def destroy
    @exchange = Exchange.find(params[:id])
    @exchange.destroy

    respond_to do |format|
      format.html { redirect_to(exchanges_url) }
      format.xml  { head :ok }
    end
  end

	def search
		@query = params[:query]
		@exchanges = Exchange.search @query
	end
end
