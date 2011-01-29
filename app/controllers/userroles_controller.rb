class UserrolesController < ApplicationController
  # GET /userroles
  # GET /userroles.xml
  def index
    @userroles = Userrole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @userroles }
    end
  end

  # GET /userroles/1
  # GET /userroles/1.xml
  def show
    @userrole = Userrole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @userrole }
    end
  end

  # GET /userroles/new
  # GET /userroles/new.xml
  def new
    @userrole = Userrole.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @userrole }
    end
  end

  # GET /userroles/1/edit
  def edit
    @userrole = Userrole.find(params[:id])
  end

  # POST /userroles
  # POST /userroles.xml
  def create
    @userrole = Userrole.new(params[:userrole])

    respond_to do |format|
      if @userrole.save
        format.html { redirect_to(@userrole, :notice => 'User Role was successfully created.') }
        format.xml  { render :xml => @userrole, :status => :created, :location => @userrole }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @userrole.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /userroles/1
  # PUT /userroles/1.xml
  def update
    @userrole = Userrole.find(params[:id])

    respond_to do |format|
      if @userrole.update_attributes(params[:userrole])
        format.html { redirect_to(@userrole, :notice => 'User Role was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @userrole.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /userroles/1
  # DELETE /userroles/1.xml
  def destroy
    @userrole = Userrole.find(params[:id])
    @userrole.destroy

    respond_to do |format|
      format.html { redirect_to(userroles_url) }
      format.xml  { head :ok }
    end
  end

	#Search
	def search
		@query = params[:query]
		@userroles = Userrole.search @query
	end
	#End: Search
end
