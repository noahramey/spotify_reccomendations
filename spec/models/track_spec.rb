require 'rails_helper'

describe Track do
  it { should belong_to :playlist }
  it { should validate_presence_of :name }
  it { should validate_presence_of :artist }
  it { should validate_presence_of :album }
end
