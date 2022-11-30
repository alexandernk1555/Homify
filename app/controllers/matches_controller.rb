class MatchesController < ApplicationController

  def index
    @matches = Match.where(user_id: current_user.id)
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
    @user = current_user.id
    # @user = User.find(@match.user_id)
    @listing = Listing.find(@match.listing_id)
    @landlord = current_user.listings.ids.include? @listing.id
  end



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

  def destroy
	  @match = Match.find(params[:id])
	  @match.destroy
	  redirect_to matches_path, notice: 'Unmatched'
	end

  def chats
    @matches = Match.where(user_id: current_user.id)
    @listing_matches = current_user.listing_matches
  end

  private

  def match_params
    params.require(:match).permit(:listing_id, :search_id)
  end

end
