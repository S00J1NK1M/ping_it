class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pingpong_table = PingpongTable.find(params[:pingpong_table_id])
    @favorite.user = current_user
    @favorite.pingpong_table = @pingpong_table
    @favorite.save

    redirect_to pingpong_table_path(@pingpong_table)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @pingpong_table = @favorite.pingpong_table

    @favorite.destroy

    redirect_to pingpong_table_path(@pingpong_table)

  end
end
