require 'rails_helper'

describe 'the show playlist process', :vcr => true do
  it "shows a specific playlists details" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Starred'
    expect(page).to have_content 'Lisa Baby'
  end
end
