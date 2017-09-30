class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]
  before_action :set_listings, only: [:index]
  # GET /listings
  def index
    @listings = Listing.all
    # @listings = Listing.where('user_id = ?', current_user.id)

    render json: @listings
  end

  # GET /listings/1
  def show
    render json: @listing
    # render json: Listing.find(params[:id])
  end

  # POST /listings
  def create
    @listing = Listing.new(listing_params)
    # @listing = current_user.listings.build(listing_params)

    if @listing.save
      render json: @listing, status: :created, location: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listings/1
  def update
    if @listing.update(listing_params)
      render json: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def set_listings
      @listings = Listing.all
    end

    def set_user
      @user_id = Listing.find(params[:listing['user_id']])
    end

    # Only allow a trusted parameter "white list" through.
    def listing_params
      params.require(:listing).permit(:name, :description, :price, :user_id)
    end
end