class MatchesController < ApplicationController
  before_action :set_match, only: %i[show edit update destroy]

  def index
    @matches = Match.all
    # A user can reserve one table only - how can we limit that?
  end

  def show
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.organiser = current_user
    if @match.save
      redirect_to match_path(@match)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @match.update(match_params)
      redirect_to @match
    else
      render :edit
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_url, status: :see_other
  end

  def join
    @match = Match.find(params[:id])
    @match.update(buddy: current_user)
    redirect_to my_profile_path
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:name, :match_time, :location, :equipment)
  end
end
