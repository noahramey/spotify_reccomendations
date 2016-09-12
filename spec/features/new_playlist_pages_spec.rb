require 'rails_helper'

describe "the add a playlist process" do
  it "adds a new playlist" do
    visit playlists_path
    click_link 'Add a Playlist'
    fill_in 'Name', with: '2016 Playlist'
    fill_in 'Description', with: 'Love these songs!'
    fill_in 'Url', with: 'https://example.com'
    click_on 'Create Playlist'
    expect(page).to have_content '2016 Playlist'
  end

  it "gives an error when a field is left blank" do
    visit new_playlist_path
    click_on 'Create Playlist'
    expect(page).to have_content 'errors'
  end
end
