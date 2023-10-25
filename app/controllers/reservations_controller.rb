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

  def update
  end

  def show
    @pingpong_table = Reservation.find(params[:id]).pingpong_table
    url = "#{request.base_url}#{play_pingpong_table_path(params[:pingpong_table_id], res:params[:id])}"
      @qr = RQRCode::QRCode.new(url)
      @svg = @qr.as_svg(
        color: :black,
        shape_rendering: "crispEdges",
        module_size: 11,
        standalone: true,
        use_path: true
      )
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :pingpong_table_id)
  end
end
