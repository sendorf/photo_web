require "spec_helper"

describe Photo do
  it "generates ofuscated stock reference" do
  	photo = Photo.new
  	stock_ref = "ARNFH-U-5728"									# Sample stock reference
  	registration = "SO06DNV"									# Sample registration plate
  	photo.generate_reference().should eq("AVRNNDF6H0-OUS2") 	# Generates the ofuscated reference for the example
  end
end