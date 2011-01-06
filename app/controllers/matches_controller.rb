class MatchesController < ApplicationController

  before_filter :find_teams
  before_filter :find_matchdays
  # GET /matches
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.xml
  def show
    @match = Match.find(params[:id])
  end

  # GET /matches/new
  # GET /matches/new.xml
  def new
    @match = Match.new

  end

  # GET /matches/1/edit
  def edit
    @match = Match.find(params[:id])
  end

  # POST /matches
  # POST /matches.xml
  def create
    @match = Match.new(params[:match])

      if @match.save
        flash[:notice] = 'Match was successfully created.'
        redirect_to(@match)
      else
        render :action => "new"
    end
  end

  # PUT /matches/1
  # PUT /matches/1.xml
  def update
    @match = Match.find(params[:id])

      if @match.update_attributes(params[:match])
        flash[:notice] = 'Match was successfully updated.'
        redirect_to(@match)
      else
        render :action => "edit"
    end
  end

  # DELETE /matches/1
  def destroy
    @match = Match.find(params[:id])
    @match.destroy

      redirect_to(matches_url) 
  end
     
  private

  def find_teams
    @teams = Team.all
  end

  def find_matchdays
    @matchdays = Matchday.all
  end

end
