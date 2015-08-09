class ArtistsController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :destroy, :new, :create]

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    # @auction = Auction.find(params[:auction_id])
    if @artist.save
      flash[:notice] = "Artist Saved!"

      respond_to do |format|
       format.html { redirect_to root_path }
       format.js
      end
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to auction_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to auctions_path
  end


private
  def artist_params
    params.require(:artist).permit(:name, :nationality, :year_of_birth)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
