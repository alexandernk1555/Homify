class ViewingsController < ApplicationController
  before_action :set_match
  def new
    @viewings = Viewing.new
  end

  def create
    @viewing = Viewing.new(viewing_params)
    @viewing.match = @match
    @viewing.save
    redirect_to match_viewing_path(@match, @viewing)
  end

  def show
    @viewings = Viewing.all
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

  def viewing_params
    params.require(:viewing).permit(:date, :start_time, :end_time)
  end
end
