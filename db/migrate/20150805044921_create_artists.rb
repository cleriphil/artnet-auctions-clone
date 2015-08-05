class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :nationality
      t.string :year_of_birth
    end
  end
end
