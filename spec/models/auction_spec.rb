require 'rails_helper'

describe Auction do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :start_date}
  it { should validate_presence_of :end_date}
  it { should have_many :lots }
end
