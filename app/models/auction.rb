class Auction < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true


end
