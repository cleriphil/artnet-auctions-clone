class Lot < ActiveRecord::Base
  validates :artwork_title, :presence => true
  validates :artwork_date, :presence => true
  validates :estimate, :presence => true
  belongs_to :auction
  belongs_to :artist

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
