class LeaguesController < ApplicationController
  # GET /leagues
  # GET /leagues.xml
  def index
    @leagues = League.all
  end

  # GET /leagues/1
  # GET /leagues/1.xml
  def show
    @league = League.find(params[:id])
  end

  # GET /leagues/new
  # GET /leagues/new.xml
  def new
    @league = League.new
  end

  # GET /leagues/1/edit
  def edit
    @league = League.find(params[:id])
  end

  # POST /leagues
  # POST /leagues.xml
  def create
    @league = League.new(params[:league])

    if @league.save
      flash[:notice] = 'Liga została stworzona'
      redirect_to(@league)
    else
       render :action => "new"
    end
  end

  # PUT /leagues/1
  # PUT /leagues/1.xml
  def update
    @league = League.find(params[:id])

    if @league.update_attributes(params[:league])
      flash[:notice] = 'Liga została zedytowana'
      redirect_to(@league)
    else
      render :action => "edit"  
    end
  end

  # DELETE /leagues/1
  # DELETE /leagues/1.xml
  def destroy
    @league = League.find(params[:id])
    @league.destroy
    redirect_to(leagues_url)
  end
end
