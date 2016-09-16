require 'rails_helper'

describe Playlist do
  it { should belong_to :account }
  it { should have_many :tracks }
end
