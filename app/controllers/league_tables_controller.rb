class LeagueTablesController < ApplicationController
  # GET /league_tables
  # GET /league_tables.xml
  def index
    @league_tables = LeagueTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @league_tables }
    end
  end

  # GET /league_tables/1
  # GET /league_tables/1.xml
  def show
    @league_table = LeagueTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @league_table }
    end
  end

  # GET /league_tables/new
  # GET /league_tables/new.xml
  def new
    @league_table = LeagueTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @league_table }
    end
  end

  # GET /league_tables/1/edit
  def edit
    @league_table = LeagueTable.find(params[:id])
  end

  # POST /league_tables
  # POST /league_tables.xml
  def create
    @league_table = LeagueTable.new(params[:league_table])

    respond_to do |format|
      if @league_table.save
        flash[:notice] = 'LeagueTable was successfully created.'
        format.html { redirect_to(@league_table) }
        format.xml  { render :xml => @league_table, :status => :created, :location => @league_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @league_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /league_tables/1
  # PUT /league_tables/1.xml
  def update
    @league_table = LeagueTable.find(params[:id])

    respond_to do |format|
      if @league_table.update_attributes(params[:league_table])
        flash[:notice] = 'LeagueTable was successfully updated.'
        format.html { redirect_to(@league_table) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @league_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /league_tables/1
  # DELETE /league_tables/1.xml
  def destroy
    @league_table = LeagueTable.find(params[:id])
    @league_table.destroy

    respond_to do |format|
      format.html { redirect_to(league_tables_url) }
      format.xml  { head :ok }
    end
  end
end
