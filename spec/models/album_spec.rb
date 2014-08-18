require 'spec_helper'

describe Album do
	it "has a valid factory" do
		FactoryGirl.create(:album).should be_valid
	end
	it "is invalid without a name" do
		expect(FactoryGirl.build(:album, name: nil)).to_not be_valid
	end
end
