require 'spec_helper'

describe Artist do
  it "has a valid factory" do 
  	expect(create(:artist)).to be_valid
	end

  it "is invalid without a name" do
  	expect(build(:artist, name: nil)).to_not be_valid
  end

  it "is invalid without a unique name" do
  	create(:artist, name: "Artist")
  	expect(build(:artist, name: "Artist")).to_not be_valid
  end
end
