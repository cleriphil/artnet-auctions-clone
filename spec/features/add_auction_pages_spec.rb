require 'rails_helper'


describe "the add an auction process" do
  it "adds an auction" do
    user = FactoryGirl.create(:user, admin?: true)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    visit auctions_path
    click_on 'Add Auction'
    fill_in 'Name', :with => 'Example Auction'
    fill_in 'Description', :with => 'This is a description.'
    fill_in 'Start date', :with => '08/02/2015, 12:00 AM'
    fill_in 'End date', :with => '08/07/2015, 12:00 AM'
    click_on 'Create Auction'
    expect(page).to have_content 'Example Auction'
  end
end
