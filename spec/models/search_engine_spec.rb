require "spec_helper"

describe SearchEngine do
  it "generates ofuscated stock reference" do
  	stock_ref = "ARNFH-U-5728"															# Sample stock reference
  	registration = "SO06DNV"																# Sample registration plate
  	engine = SearchEngine.new(stock_ref, registration)
  	engine.generate_reference.should eq("AVRNNDF6H0-OUS2") 	# Generates the ofuscated reference for
  end																												# the example
end