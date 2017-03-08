class TracksController < ApplicationController
  def new
    @track = Track.new
  end

  def show
    @track = Track.find(params[:id])
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      flash[:success] = "Success!"
      redirect_to @track
    else
      flase[:error] = @track.errors.full_messages
      redirect_to @track
    end
  end

  private
  def track_params
    params.require(:track).permit(:track_number, :track_info)
  end
end
