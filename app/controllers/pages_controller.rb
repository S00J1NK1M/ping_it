class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @my_favorite_tables = current_user.favorites
    #@my_matches = current_user.matches
  end

end
