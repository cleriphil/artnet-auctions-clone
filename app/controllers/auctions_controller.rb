class AuctionsController < ApplicationController
  def index
    @auctions = Auction.all

  end
  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(auction_params)
    if @auction.save
      flash[:notice] = "Auction Saved!"
      redirect_to '/'
    else
      render :new
    end
  end

private
  def auction_params
    params.require(:auction).permit(:name, :description, :start_date, :end_date)
  end
end
