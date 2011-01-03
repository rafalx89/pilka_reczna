class TeamsController < ApplicationController

  before_filter :find_league

  # GET /teams
  # GET /teams.xml
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.xml
  def show
    @team = Team.find(params[:id])
  end

  # GET /teams/new
  # GET /teams/new.xml
  def new
    @team = Team.new
    @leagues = League.all
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  # POST /teams.xml
  def create
    @team = Team.new(params[:team])

      if @team.save
        flash[:notice] = 'Zespól został stworzony'
        redirect_to(@team) 
      else
        render :action => "new" 
      end
  end

  # PUT /teams/1
  # PUT /teams/1.xml
  def update
    @team = Team.find(params[:id])

      if @team.update_attributes(params[:team])
        flash[:notice] = 'Zespół został zedytowany'
        redirect_to(@team)
      else
        render :action => "edit" 
      end
  end

  # DELETE /teams/1
  # DELETE /teams/1.xml
  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to(teams_url)
  end

  private

  def find_league
    @league = League.all
  end
end
