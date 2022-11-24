class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end 

  def profile
    @user = current_user
    # @listings = @user.listings
    # @searches = @user.search
  end


  def julia

  end

  def components_alex
  end

  def alex

  end

  def jorgen
  end


end
