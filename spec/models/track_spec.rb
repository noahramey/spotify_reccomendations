require 'rails_helper'

describe Track do
  it { should belong_to :playlist }
end
