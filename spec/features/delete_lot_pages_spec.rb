require 'rails_helper'

describe "the delete a lot process" do
  it "deletes a lot" do
    user = FactoryGirl.create(:user, admin?: true)
    auction = FactoryGirl.create(:auction)
    lot = FactoryGirl.create(:lot, auction_id: auction.id)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    visit auction_lot_path(auction, lot)
    click_on 'Delete Lot'
    expect(page).to have_no_content 'Untitled'
    expect(page).to have_no_content '2006'
    expect(page).to have_no_content '8,000—10,000 USD'
  end
end
