class Auction < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  has_many :lots

#end date must be after start date

end
