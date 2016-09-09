require 'rails_helper'

describe Playlist do
  it { should have_many :tracks }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :url }
  it { should validate_uniqueness_of :url }
end
