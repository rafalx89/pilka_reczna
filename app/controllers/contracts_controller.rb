class ContractsController < ApplicationController
  before_filter :find_player
  # GET /contracts
  def index
    @contracts = Contract.all
  end

  # GET /contracts/new
  def new
    @contract = @player.contracts.new
    @teams = Team.all
  end

 

  # GET /contracts/1/edit
  def edit
    @contract = @player.contract
    @teams = Team.all
  end

  # POST /contracts
  def create
    @contract = @player.contracts.new(params[:contract])
    if @contract.end_date > Date.today
      @player.team_id  = @contract.team_id
    else
      @player.team_id = nil
    end

      if @contract.save
        @player.save
        flash[:notice] = 'Contract was successfully created.'
        redirect_to(@player) 
      else
        render :action => "new" 
      end
  end

  # PUT /contracts/1
  # PUT /contracts/1.xml
  def update
    @contract = Contract.find(params[:id])

      if @contract.update_attributes(params[:contract])
        flash[:notice] = 'Contract was successfully updated.'
        redirect_to(@contract) 
        
      else
        render :action => "edit"
      end
  end

  def destroy
    end_contract
    redirect_to(@player) 
  end


  private

  def find_player
    @player = Player.find(params[:player_id])
  rescue
  end

   def end_contract
    @player.find_active_contract
    @contract = @player.active_contract
    @contract.end_date = Date.today
    @contract.save
    @player.team_id = nil
    @player.save
  end

end
