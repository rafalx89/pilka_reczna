class PlayersController < ApplicationController


  #current_table: Player
  #instance: player
  
  def index
    @players = Player.all
  end
  
  def show
    @player = Player.find(params[:id])
    @contracts = @player.contracts || []
  end
  
  def new
    @player = Player.new
  end
  
  def edit
    @player = Player.find(params[:id])
  end
  
  def create
    @player = Player.new(params[:player])
  
    if @player.save
      flash[:notice] = 'Player was successfully created.'
      redirect_to player_path(@player)
    else
      render :action => "new"
    end
  end
  
  def update
    @player = Player.find(params[:id])
  
    if @player.update_attributes(params[:player])
      flash[:notice] = 'Player was successfully updated.'
      redirect_to player_path(@player)
  
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @player = Player.find(params[:id])
    $player.destroy
  
    redirect_to(players_url)
  end

end
