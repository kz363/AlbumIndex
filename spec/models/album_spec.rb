require 'spec_helper'

describe Album do
	it "has a valid factory" do
		expect(create(:album)).to be_valid
	end
	
	it "is invalid without a name" do
		expect(build(:album, name: nil)).to_not be_valid
	end
end
