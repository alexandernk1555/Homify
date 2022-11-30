class SearchesController < ApplicationController

  def new
    @searches = Search.all
    @search = Search.new
  end

  def create
    # @listing = Listing.all
    @search = Search.new(search_params)
    @search.user = current_user
    if @search.save!
      redirect_to listings_path(search: @search.id)
    end
  end
  
  def edit
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])
    @search.update(search_params)
    redirect_to listings_path(search: @search.id)
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to request.referer, status: :see_other
  end


  private

  def search_params
    params.require(:search).permit(:price, :price_max, :bedrooms, :bathrooms, :address, :property_type, :area_size, :floor, :garden, :balcony, :parking, :occupation, :family_status, :pets, :lift, :furnished, :postcode, :city, :district, :street, :country)
  end
end
