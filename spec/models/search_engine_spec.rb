require "spec_helper"

describe SearchEngine do
  it "generates ofuscated stock reference" do
  	stock_ref = "ARNFH-U-5728"															# Sample stock reference
  	registration = "SO06DNV"																# Sample registration plate
  	engine = SearchEngine.new(stock_ref, registration)
  	engine.generate_reference.should eq("AVRNNDF6H0-OUS2") 	# Generates the ofuscated reference for
  end																												# the example
end

describe SearchEngine do
  it "generates candidate images" do
  	stock_ref = "ARNFH-U-5728"															# Sample stock reference
  	registration = "SO06DNV"																# Sample registration plate
  	engine = SearchEngine.new(stock_ref, registration)
  	candidate_images = [ "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/i/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/6/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/f/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/4/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/5/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/r/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/4/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/i/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/6/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/f/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/5/",
  											 "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/r/"]	
  	engine.generate_candidates(engine.generate_reference).should eq(candidate_images) 	# Generates the candidates images for
  end																																										# the example ofuscated reference
end