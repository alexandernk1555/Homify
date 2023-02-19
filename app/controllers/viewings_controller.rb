class ViewingsController < ApplicationController
  before_action :set_match, except: [:index, :destroy, :accept_booking, :decline_booking]

  def new
    @viewings = Viewing.new
  end

  def create
    @viewing = Viewing.new(viewing_params)
    @viewing.match = @match
    @viewing.save
    redirect_to viewings_path
  end

  def index
    @viewings = current_user.viewings
  end

  def destroy
    @viewing = Viewing.find(params[:id])
    @viewing.destroy
    redirect_to request.referer, status: :see_other
  end

  def accept_booking
    @viewing = Viewing.find(params[:id])
    @viewing.status = "accepted"
    @viewing.save

    redirect_to request.referer, status: :see_other
  end

  def decline_booking
    @viewing = Viewing.find(params[:id])
    @viewing.status = "declined"
    @viewing.save

    redirect_to request.referer, status: :see_other
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

  def viewing_params
    params.require(:viewing).permit(:date, :start_time, :end_time)
  end
end
