class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:search].present?
      @search = Search.find(params[:search])
      @listings = Listing.all

      [ "price",
 "bedrooms",
 "bathrooms",
 "address",
 "photos",
 "description",
 "property_type",
 "area_size",
 "floor",
 "garden",
 "balcony",
 "parking",
 "family_status",
 "occupation",
 "pets",
 "lift",
 "furnished",].each do |column|
        value = @search.send(column.to_sym)
        if value.present?
          if column == "price"
            query = "#{column} > (:value - 500) AND #{column} < (:value + 500)"
          else
            query = "#{column} = :value"
          end
          p query, value
          @listings = @listings.where(query, value: value) 
        end
      end
    elsif params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @user = current_user
    @listing = Listing.new(listing_params)
    @listing.user = @user

    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:price, :bedrooms, :bathrooms, :address, :description, :property_type, :area_size, :floor, :garden, :balcony, :parking, :family_status, :occupation, :pets, :lift, :furnished, :user_id)
  end

end
