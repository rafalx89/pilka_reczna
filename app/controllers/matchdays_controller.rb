class MatchdaysController < ApplicationController

  before_filter :find_seasons

  # GET /matchdays
  def index
    @matchdays = Matchday.all

   
  end

  # GET /matchdays/1
  def show
    @matchday = Matchday.find(params[:id])

   
  end

  # GET /matchdays/new
  # GET /matchdays/new.xml
  def new
    @matchday = Matchday.new

   
  end

  # GET /matchdays/1/edit
  def edit
    @matchday = Matchday.find(params[:id])
  end

  # POST /matchdays
  # POST /matchdays.xml
  def create
    @matchday = Matchday.new(params[:matchday])

      if @matchday.save
        flash[:notice] = 'Matchday was successfully created.'
        redirect_to(@matchday)
      else
       render :action => "new"
      end
  end

  # PUT /matchdays/1
  def update
    @matchday = Matchday.find(params[:id])

      if @matchday.update_attributes(params[:matchday])
        flash[:notice] = 'Matchday was successfully updated.'
        redirect_to(@matchday)
      else
        render :action => "edit"
      end
  end

  # DELETE /matchdays/1
  # DELETE /matchdays/1.xml
  def destroy
    @matchday = Matchday.find(params[:id])
    @matchday.destroy
    redirect_to(matchdays_url)
  end

  private 
  def find_seasons
    @seasons = Season.all
  end
end
