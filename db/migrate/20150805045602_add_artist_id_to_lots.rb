class AddArtistIdToLots < ActiveRecord::Migration
  def change
    add_column :lots, :artist_id, :integer
  end
end
