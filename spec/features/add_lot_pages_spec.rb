require 'rails_helper'

describe "the add a lot process" do
  it "adds a lot" do
    user = FactoryGirl.create(:user, admin?: true)
    auction = FactoryGirl.create(:auction)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    visit auction_path(auction)
    click_on 'Add Lot'
    fill_in 'Artwork_title', :with => 'Sky Cathedral'
    fill_in 'Artwork date', :with => '1958'
    fill_in 'Estimate', :with => '8,000—10,000 USD'
    click_on 'Create lot'
    expect(page).to have_content 'Sky Cathedral'
    expect(page).to have_content '1958'
    expect(page).to have_content '8,000—10,000 USD'
  end
end
