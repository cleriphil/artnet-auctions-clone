require 'rails_helper'

describe "the edit a lot process" do
  it "edits a lot" do
    user = FactoryGirl.create(:user, admin?: true)
    auction = FactoryGirl.create(:auction)
    lot = FactoryGirl.create(:lot, auction_id: auction.id)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    visit auction_lot_path(auction, lot)
    click_on 'Edit Lot'
    fill_in 'Artwork title', :with => 'Sky Cathedral'
    fill_in 'Artwork date', :with => '1958'
    fill_in 'Estimate', :with => '8,000—10,000 USD'
    click_on 'Update Lot'
    expect(page).to have_content 'Sky Cathedral'
    expect(page).to have_content '1958'
    expect(page).to have_content '8,000—10,000 USD'
  end
end
