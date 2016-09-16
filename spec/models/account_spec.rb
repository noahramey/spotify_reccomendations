require 'rails_helper'

describe Account, :vcr => true do
  it { should belong_to :user }
  it { should have_many :playlists }
  it 'should create playlists and tracks on save' do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    expect(account.playlists.first.name).to eq 'Starred'
  end
end
