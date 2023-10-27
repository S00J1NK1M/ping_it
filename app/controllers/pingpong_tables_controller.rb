require "rqrcode"

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
    @my_favorite = Favorite.find_by(pingpong_table: @pingpong_table)
  end

  def taken
    @pingpong_table = PingpongTable.find(params[:id])

    # the line below makes the pingpong table unavaliable & QR code is not working
    # Please leave the line below as commented
    # @pingpong_table.update(availability: false)
    
    redirect_to pingpong_table_reservation_path(@pingpong_table, params[:res])
  end

  def read_qr
  end

  def play
    @ping_pong_table = PingpongTable.find(params[:id])
    @reservation = Reservation.find(params[:res])
  end

  def create
  end
end
