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
    @viewing = Viewing.new
    @match = current_user.matches.find_by(listing: @listing)
  end

  def new
    @listing = Listing.new
  end

  def create
    @user = current_user
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @listing.save

    if @listing.save!
      redirect_to listing_path(@listing.id)
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @user = current_user
    @listing = Listing.find(params[:id])
    @listing.update!(listing_params)
    redirect_to listing_path(@listing.id)
  end

  def destroy
	  @listing = Listing.find(params[:id])
	  @listing.destroy
	  redirect_to profile_path
	end

  private

  def listing_params
    params.require(:listing).permit(:price, :bedrooms, :bathrooms, :address, :description, :property_type, :area_size, :floor, :garden, :balcony, :parking, :family_status, :occupation, :pets, :lift, :furnished, :user_id, photos: [])
  end
end
