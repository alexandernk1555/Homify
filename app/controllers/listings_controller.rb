class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  # def exe_method_from_js
  #   puts "The method 'exe_method_from_js was executed. ✅'"
  # end

end
