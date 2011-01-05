class MatchdaysController < ApplicationController
  # GET /matchdays
  # GET /matchdays.xml
  def index
    @matchdays = Matchday.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matchdays }
    end
  end

  # GET /matchdays/1
  # GET /matchdays/1.xml
  def show
    @matchday = Matchday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matchday }
    end
  end

  # GET /matchdays/new
  # GET /matchdays/new.xml
  def new
    @matchday = Matchday.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matchday }
    end
  end

  # GET /matchdays/1/edit
  def edit
    @matchday = Matchday.find(params[:id])
  end

  # POST /matchdays
  # POST /matchdays.xml
  def create
    @matchday = Matchday.new(params[:matchday])

    respond_to do |format|
      if @matchday.save
        flash[:notice] = 'Matchday was successfully created.'
        format.html { redirect_to(@matchday) }
        format.xml  { render :xml => @matchday, :status => :created, :location => @matchday }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matchday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matchdays/1
  # PUT /matchdays/1.xml
  def update
    @matchday = Matchday.find(params[:id])

    respond_to do |format|
      if @matchday.update_attributes(params[:matchday])
        flash[:notice] = 'Matchday was successfully updated.'
        format.html { redirect_to(@matchday) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matchday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matchdays/1
  # DELETE /matchdays/1.xml
  def destroy
    @matchday = Matchday.find(params[:id])
    @matchday.destroy

    respond_to do |format|
      format.html { redirect_to(matchdays_url) }
      format.xml  { head :ok }
    end
  end
end
