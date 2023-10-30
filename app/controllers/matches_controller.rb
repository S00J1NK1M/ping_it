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
    if @match.save
      redirect_to matches_path(@match)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def match_params
    params.require(:match).permit(:name, :match_time, :location, :equipment)
  end
end
