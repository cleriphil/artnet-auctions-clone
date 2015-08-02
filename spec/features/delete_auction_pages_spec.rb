require 'rails_helper'

describe "the delete an auction process" do
  it "deletes an auction" do
    user = FactoryGirl.create(:user, admin?: true)
    auction = FactoryGirl.create(:auction)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    visit auction_path(auction)
    click_on 'Delete Auction'
    expect(page).to have_no_content 'Contemporary Art'
  end
end
