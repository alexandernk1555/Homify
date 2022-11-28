class ViewingsController < ApplicationController
  before_action :set_match
  def new
    @viewings = Viewing.new
  end

  def create
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end
end
