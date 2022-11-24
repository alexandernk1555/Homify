class PagesController < ApplicationController
  def home
    if params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end 


  def julia
   
  end

  def components_alex
    # @grandma = Grandma.new
  end

  def alex

  end

  def jorgen
  end


end
