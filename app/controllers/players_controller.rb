class PlayersController < ApplicationController
  before_filter :find_teams
  # GET /players
  # GET /players.xml
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.xml
  def show
    @player = Player.find(params[:id])
    @player.find_active_contract
    @contracts = @player.contracts || []
  end

  # GET /players/new
  # GET /players/new.xml
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.xml
  def create
    @player = Player.new(params[:player])

      if @player.save
        flash[:notice] = 'Player was successfully created.'
        redirect_to(@player)
      else
        render :action => "new" 
      end
  end

  # PUT /players/1
  # PUT /players/1.xml
  def update
    @player = Player.find(params[:id])

      if @player.update_attributes(params[:player])
        flash[:notice] = 'Player was successfully updated.'
        redirect_to(@player) 
      else
        render :action => "edit"
      end
  end

  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to(teams_ur)
  end

  def find_teams
    @teams = Team.all
  end
end
