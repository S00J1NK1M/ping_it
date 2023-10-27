class MatchesController < ApplicationController
  def index
    @matches = Match.all
    # A user can reserve one table only - how can we limit that?
  end

  def new
    @match = Match.new
  end

  def create
  end

  
end
