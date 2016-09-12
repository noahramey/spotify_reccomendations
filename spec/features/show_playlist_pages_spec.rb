require 'rails_helper'

describe 'the show playlist process' do
  it "shows a specific playlists details" do
    playlist = Playlist.create(name: 'test name', description: 'test description', url: 'test.com')
    visit playlists_path
    click_link 'test name'
    expect(page).to have_content 'test description'
  end
end
