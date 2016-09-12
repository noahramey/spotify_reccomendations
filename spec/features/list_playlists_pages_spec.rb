require 'rails_helper'

describe 'the list all playlists process' do
  it "shows all of the available playlists" do
    Playlist.create(name: 'test name', description: 'test description', url: 'test.com')
    visit playlists_path
    expect(page).to have_content 'test name'
  end

  it "shows an alternate message if there are no playlists" do
    visit playlists_path
    expect(page).to have_content 'You have no playlists.'
  end
end
