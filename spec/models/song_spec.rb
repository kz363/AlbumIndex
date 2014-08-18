require 'spec_helper'

describe Song do
  it "has a valid factory" do
  	FactoryGirl.create(:song).should be_valid
  end
  it "is invalid without a name" do
  	expect(FactoryGirl.build(:song, name: nil)).to_not be_valid
  end
end
