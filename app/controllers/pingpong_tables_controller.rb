class PingpongTablesController < ApplicationController
  def index
    @pingpong_tables = PingpongTable.all

    @markers = @pingpong_tables.geocoded.map do |pingpong_table|
      {
        latitude: pingpong_table.latitude,
        longitude: pingpong_table.longitude
      }
    end
  end

  def show
  end

  def create
  end


end
