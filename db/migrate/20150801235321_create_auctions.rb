class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
