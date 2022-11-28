class MatchesController < ApplicationController

  def create
    @match = Match.new(match_params)
    user = current_user
    @match.user = user
    if @match.save
      puts 'saved in matches'
    else
      puts 'not saved'
    end
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  private

  def match_params
    params.require(:match).permit(:listing_id, :search_id)
  end

end
