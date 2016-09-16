require 'rails_helper'

describe 'the list all playlists process', :vcr => true do
  it "shows all of the available playlists" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit root_path
    expect(page).to have_content 'Starred'
  end

  it "shows an alternate message if there are no playlists" do
    visit playlists_path
    expect(page).to have_content 'You have no playlists.'
  end
end
