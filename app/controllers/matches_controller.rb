class MatchesController < ApplicationController
  def index
    @matches = Match.all
    # A user can reserve one table only - how can we limit that?
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.save
    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:name, :location)
  end
end
