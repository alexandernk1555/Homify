class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # user cannot see and swipe on own listings.
    @listings = Listing.where.not(user_id: current_user.id)

    if params[:search].present?
      @search = Search.find(params[:search])

      ["price",
      "bedrooms",
      "bathrooms",
      "address",
      "city",
      "country",
      "street",
      "postcode",
      "district",
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
      "furnished"].each do |column|
        value = @search.send(column.to_sym)
        if value.present?
          if column == "price"
            query = "#{column} > :min AND #{column} < :max"
          else
            query = "#{column} = :value"
          end
          p query, value
          @listings = @listings.where(query, value: value, min: @search.price, max: @search.price_max)
        end
      end
    else
      @listings = @listings.global_search(params[:city]) if params[:city].present?

      if params[:min_price].present? && params[:max_price].present?
        @listings = @listings.where(price: params[:min_price]..params[:max_price])
      elsif params[:min_price].present?
        @listings = @listings.where('price >= ?', params[:min_price])
      elsif params[:max_price].present?
        @listings = @listings.where('price <= ?', params[:max_price])
      end

      @listings = @listings.where(bedrooms: params[:bedrooms]) if params[:bedrooms].present?
    end
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        id: listing.id,
        info_window: render_to_string(partial: "info_window", locals: {listing: listing})
      }
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @viewing = Viewing.new
    @match = current_user.matches.find_by(listing: @listing)
    @listings = Listing.where(id: @listing.id)
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        id: listing.id,
        info_window: render_to_string(partial: "info_window", locals: {listing: listing})
      }
    end
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
    params.require(:listing).permit(:price, :bedrooms, :bathrooms, :address, :description, :property_type, :area_size, :floor, :garden, :balcony, :parking, :family_status, :occupation, :pets, :lift, :furnished, :user_id, :city, :district, :postcode, :street, :country, photos: [])
  end
end
