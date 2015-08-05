class Lot < ActiveRecord::Base
  validates :artwork_title, :presence => true
  validates :artwork_date, :presence => true
  validates :estimate, :presence => true
  belongs_to :auction
  belongs_to :artist
end
