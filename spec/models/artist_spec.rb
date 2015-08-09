require 'rails_helper'

describe Artist do
  it { should validate_presence_of :name}
  it { should validate_presence_of :nationality}
  it { should validate_presence_of :year_of_birth}
  it { should have_many :lots }
end
