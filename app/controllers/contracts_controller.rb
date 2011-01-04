class ContractsController < ApplicationController
  before_filter :find_player

  def new
    @teams = Team.all
    @contract = @player.contracts.new
  end

  def create
    @contract = @player.contracts.new(:team_id => params[:contract][:team_id].to_i)
    if @contract.save
      redirect_to player_path(@player)
    else
      redirect_to '/'
    end
  end

  private

  def find_player
    @player = Player.find(params[:player_id])
  end
end
