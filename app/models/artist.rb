class Artist < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :nationality, :presence => true
  validates :year_of_birth, :presence => true
  has_many :lots
end
