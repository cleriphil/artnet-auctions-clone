class LotsController < ApplicationController
  def new
    @auction = Auction.find(params[:auction_id])
    @lot = Lot.new
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
  end

  def update
  end

  def destroy
  end

private
  def lot_params
    params.require(:lot).permit(:artwork_title, :artwork_date, :description, :estimate, :opening_bid, :current_bid, :number_of_bids, :signed_details, :image_size, :overall_size, :framed_size, :medium )
  end

end
