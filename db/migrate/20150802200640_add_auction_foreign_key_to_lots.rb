class AddAuctionForeignKeyToLots < ActiveRecord::Migration
  def change
    add_column :lots, :auction_id, :integer
  end
end
