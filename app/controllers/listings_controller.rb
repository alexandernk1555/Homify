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
          query = "#{column} = ?"
          p query, value
          @listings = @listings.where(query, value) 
        end
      end
    elsif params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end

  def show
  end

end
