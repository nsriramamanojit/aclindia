#Author: Chaitanya Ram
#Controller: Regional Lab Information
#==========================================
class LabregionalsController < ApplicationController
prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24,
		  :page_size => 'A4',
          :page_layout=>:landscape
}
  # GET /labregionals
  # GET /labregionals.xml
  def index
#    @labregionals = Labregional.all
#pagination:
	@labregionals = Labregional.all.paginate :per_page => 5, :page => params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @labregionals }
    end
  end

  # GET /labregionals/1
  # GET /labregionals/1.xml
  def show
    @labregional = Labregional.all
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @labregional }
#    end

	prawnto :filename => 'Report-RegionalLab.pdf', :inline => false
  end

  # GET /labregionals/1
  # GET /labregionals/1.xml
  def view
	@labcentral = Labcentral.all
    @labregional = Labregional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @labregional }
    end
  end

  # GET /labregionals/new
  # GET /labregionals/new.xml
  def new
	@labcentral = Labcentral.all
    @labregional = Labregional.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labregional }
    end
  end

  # GET /labregionals/1/edit
  def edit
	@labcentral = Labcentral.all
    @labregional = Labregional.find(params[:id])
  end

  # POST /labregionals
  # POST /labregionals.xml
  def create

    @labregional = Labregional.new(params[:labregional])
#	@labregional.labid = @labregional.max

    respond_to do |format|
      if @labregional.save
        format.html { redirect_to(labregionals_path, :notice => 'Regional Lab was successfully created.') }
        format.xml  { render :xml => @labregional, :status => :created, :location => @labregional }
      else
	@labcentral = Labcentral.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @labregional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /labregionals/1
  # PUT /labregionals/1.xml
  def update
    @labregional = Labregional.find(params[:id])

    respond_to do |format|
      if @labregional.update_attributes(params[:labregional])
        format.html { redirect_to(labregionals_path, :notice => 'Regional Lab was successfully updated.') }
        format.xml  { head :ok }
      else
	@labcentral = Labcentral.all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @labregional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /labregionals/1
  # DELETE /labregionals/1.xml
  def destroy
    @labregional = Labregional.find(params[:id])
    @labregional.destroy

    respond_to do |format|
      format.html { redirect_to(labregionals_url) }
      format.xml  { head :ok }
    end
  end
	def search
		@query = params[:query]
		@labregionals = Labregional.search @query
	end
end
