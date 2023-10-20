class PingpongTablesController < ApplicationController
  def index
    @pingpong_tables = PingpongTable.all

    @markers = @pingpong_tables.geocoded.map do |pingpong_table|
      {
        latitude: pingpong_table.latitude,
        longitude: pingpong_table.longitude,

        name: pingpong_table.name,
        info_window_html: render_to_string(partial: "info_window", locals: {pingpong_table: pingpong_table }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @pingpong_table = PingpongTable.find(params[:id])
  end

  def create
  end
end
