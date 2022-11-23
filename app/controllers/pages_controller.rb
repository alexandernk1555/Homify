class PagesController < ApplicationController
  def home
    if params[:query].present?
      sql_query = <<~SQL
        listing.address @@ :query
        OR listing.synopsis @@ :query
        OR user.first_name @@ :query
        OR user.last_name @@ :query
      SQL
      @listings = Lising.joins(:user).where(sql_query, query: "%#{params[:query]}%")
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
