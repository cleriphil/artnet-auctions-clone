class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :artwork_title
      t.string :artwork_date
      t.integer :lot_id
      t.string :medium
      t.string :image_size
      t.string :overall_size
      t.string :framed_size
      t.string :signed_details
      t.string :edition
      t.string :estimate
      t.integer :opening_bid
      t.integer :current_bid
      t.integer :number_of_bids
      t.string :description
    end
  end
end
