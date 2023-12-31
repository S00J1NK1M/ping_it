class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    # A user can reserve one table only - how can we limit that?
  end

  def new
    @reservation = Reservation.new
    @reservations = Reservation.all
    # A user can reserve one table only - how can we limit that?
  end

  def create
    @pingpong_table = PingpongTable.find(params[:pingpong_table_id])
    @pingpong_table.update(availability: false)
    @reservation = Reservation.new
    @reservation.pingpong_table = @pingpong_table

    # Find the current user
    @reservation.user = current_user

    # Save
    @reservation.save

    # Go to reservations#show
    redirect_to pingpong_table_reservation_path(@pingpong_table, @reservation)
  end

  def cancel
    @reservation = Reservation.find(params[:id])
    @pingpong_table = @reservation.pingpong_table
    @pingpong_table.update(availability: true)

    @reservation.destroy

    redirect_to root_path
  end

  def show
    @reservation = Reservation.find(params[:id])
    @pingpong_table = @reservation.pingpong_table
    url = "#{request.base_url}#{play_pingpong_table_path(@pingpong_table.id, res: params[:id])}"
    @qr = RQRCode::QRCode.new(url)
    @svg = @qr.as_svg(
      color: :black,
      shape_rendering: "crispEdges",
      module_size: 3,
      standalone: true,
      use_path: true
    )

    @marker = [@pingpong_table].map do |pingpong_table|
      {
        latitude: pingpong_table.latitude,
        longitude: pingpong_table.longitude,
        marker_html: render_to_string(partial: "marker", locals: { pingpong_table: })
      }
    end
  end

  def update
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :pingpong_table_id)
  end
end
