require 'rails_helper'


describe "the add an auction process" do
  it "adds an auction" do
    user = FactoryGirl.create(:user, admin?: true)
    skill = FactoryGirl.create(:skill)
    visit '/users/login'
    login_as(user, :scope => :user)
    visit skills_path
    click_on 'SQL'
    click_on 'Edit Skill'
    fill_in 'Name', :with => 'Rails'
    fill_in 'Description', :with => 'MVC Framework'
    click_on 'Update Skill'
    expect(page).to have_content 'Rails'
  end
end
