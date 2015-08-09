require 'rails_helper'

describe Lot do
  it { should validate_presence_of :artwork_title}
  it { should validate_presence_of :artwork_date}
  it { should validate_presence_of :estimate}
  it { should belong_to :auction }
  it { should belong_to :artist }


end
