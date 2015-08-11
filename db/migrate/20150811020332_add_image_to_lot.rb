class AddImageToLot < ActiveRecord::Migration
  def change
    add_attachment :lots, :image
  end
end
