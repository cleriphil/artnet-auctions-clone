class LotsController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :destroy, :new, :create]

  def new
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.new
  end

  def show
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.find(params[:id])
  end

  def create
    @auction = Auction.find(params[:auction_id])
    @lot = @auction.lots.new(lot_params)
    if @lot.save
     flash[:notice] = "Lot Saved!"
     redirect_to auction_path(@auction)
   else
     render :new
   end

  end

  def edit
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.find(params[:id])
    if @lot.update(lot_params)
      redirect_to auction_lot_path(@auction, @lot)
    else
      render :edit
    end
  end

  def destroy
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.find(params[:id])
    @lot.destroy
    redirect_to auction_path(@auction)
  end

private
  def lot_params
    params.require(:lot).permit(:artwork_title, :artwork_date, :description, :estimate, :opening_bid, :current_bid, :number_of_bids, :signed_details, :image_size, :overall_size, :framed_size, :medium )
  end
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
