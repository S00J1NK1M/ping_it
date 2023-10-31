class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def indexx
  end

  def profile
    @my_favorite_tables = current_user.favorites

    # current_user.match doesn't work here
    @my_most_recent_match = Match.where(organiser: current_user).order('match_time DESC').limit(11).first
    @my_most_recent_game = Match.where(buddy: current_user).order('match_time DESC').limit(11).first
  end

  def more
    @my_matches = Match.where(organiser: current_user)
    @my_games = Match.where(buddy: current_user)
  end
end
