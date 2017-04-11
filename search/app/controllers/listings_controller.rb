class ListingsController < ApplicationController
  def index
    if params[:search].present?
      @listings = Listing.search_full_text(params[:search])
    else
      @listings = Listing.all
    end
  end
end
