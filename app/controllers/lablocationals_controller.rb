#Author: Chaitanya Ram
#Controller: Location Lab Information
#==========================================
class LablocationalsController < ApplicationController
prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24,
		  :page_size => 'A4',
          :page_layout=>:landscape
}
  # GET /lablocationals
  # GET /lablocationals.xml
  def index
#    @lablocationals = Lablocational.all
#pagination:
	@lablocationals = Lablocational.all.paginate :per_page => 5, :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lablocationals }
    end
  end

  # GET /lablocationals/1
  # GET /lablocationals/1.xml
  def show
    @lablocational = Lablocational.all
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @lablocational }
#    end
	prawnto :filename => 'Report-LocationalLab.pdf', :inline => false

  end

  # GET /lablocationals/1
  # GET /lablocationals/1.xml
  def view
	@labcentral = Labcentral.all
	@labregional = Labregional.all
    @lablocational = Lablocational.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lablocational }
    end
  end
  # GET /lablocationals/new
  # GET /lablocationals/new.xml
  def new
    @lablocational = Lablocational.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lablocational }
    end
  end

  # GET /lablocationals/1/edit
  def edit
	@labcentral = Labcentral.all
	@labregional = Labregional.all
    @lablocational = Lablocational.find(params[:id])
  end

  # POST /lablocationals
  # POST /lablocationals.xml
  def create
    @lablocational = Lablocational.new(params[:lablocational])
#	@lablocational.labid = @lablocational.max

    respond_to do |format|
      if @lablocational.save
        format.html { redirect_to(lablocationals_path, :notice => 'Locational Lab was successfully created.') }
        format.xml  { render :xml => @lablocational, :status => :created, :location => @lablocational }
      else
	@labcentral = Labcentral.all
	@labregional = Labregional.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @lablocational.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lablocationals/1
  # PUT /lablocationals/1.xml
  def update
    @lablocational = Lablocational.find(params[:id])

    respond_to do |format|
      if @lablocational.update_attributes(params[:lablocational])
        format.html { redirect_to(lablocationals_path, :notice => 'Locational Lab was successfully updated.') }
        format.xml  { head :ok }
      else
	@labcentral = Labcentral.all
	@labregional = Labregional.all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lablocational.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lablocationals/1
  # DELETE /lablocationals/1.xml
  def destroy
    @lablocational = Lablocational.find(params[:id])
    @lablocational.destroy

    respond_to do |format|
      format.html { redirect_to(lablocationals_url) }
      format.xml  { head :ok }
    end
  end
	def search
		@query = params[:query]
		@lablocationals = Lablocational.search @query
	end


	def load_regional
		@labregionals = Labregional.where(:labcentral_id => params[:id])
			respond_to do |format|
			format.js{
			render :update do |page| 
				page[:lablocational_labregional_id].replace collection_select(:lablocational,:labregional_id, @labregionals, :id, :labid)
			end
					}
			end
	end

end
