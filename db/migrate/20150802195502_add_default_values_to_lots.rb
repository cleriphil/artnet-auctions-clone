class AddDefaultValuesToLots < ActiveRecord::Migration
  def change
    change_column :lots, :number_of_bids, :integer, :default => 0
    change_column :lots, :current_bid, :integer, :default => 0
  end
end
