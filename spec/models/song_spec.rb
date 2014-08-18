require 'spec_helper'

describe Song do
  it "has a valid factory" do
  	expect(create(:song)).to be_valid
  end
  
  it "is invalid without a name" do
  	expect(build(:song, name: nil)).to_not be_valid
  end
end
