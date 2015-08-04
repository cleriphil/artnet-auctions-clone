class AuctionsController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :destroy, :new, :create]

  def index
    @auctions = Auction.all

  end

  def show
    @auction = Auction.find(params[:id])
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

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update(auction_params)
      redirect_to auction_path(@auction)
    else
      render :edit
    end
  end

  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy
    redirect_to auctions_path
  end


private
  def auction_params
    params.require(:auction).permit(:name, :description, :start_date, :end_date)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
