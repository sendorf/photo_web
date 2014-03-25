class SearchEngine

  include ActiveModel::Validations
  include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_reader :stock_ref, :registration, :reference

	validates_presence_of :stock_ref, :registration
	validates_length_of :stock_ref, :minimum => 11, :maximum => 20

	def initialize(stock_ref = "", registration = "" )
		if(stock_ref.size !=0)
			@stock_ref = stock_ref
		end
		if(registration.size !=0)
			@registration = registration
		end
	end

	def generate_candidates(reference)
		image_candidates = []
		sizes = [350 , 800]
		cameras = ['4', 'i', '6', 'f', '5', 'r']
		sizes.each do |size|
			cameras.each do |camera|
				image_candidates << "http://imagecache.arnoldclark.com/imageserver/#{reference}/#{size}/#{camera}/"
			end
		end
		image_candidates
	end

	def generate_reference(stock_ref = "", registration = "")
		if(stock_ref.size !=0)
			@stock_ref = stock_ref
		end
		if(registration.size !=0)
			@registration = registration
		end
	  @reference = ""
	  #stock_ref.gsub(/\s+/, "")			# Removes spaces from stock_ref
	  #stock_ref.delete("-")					# Removes '-' from stock_ref
	  #registration.gsub(/\s+/, "")		# Removes spaces from registration
	  #registration.delete("-")				# Removes '-' from registration
		registration = @registration.reverse					# Reverses the registration for later proccessing
		(0...registration.size*2).each do |index|
	  	if index.even?
	    	@reference << @stock_ref[index/2]
	  	else
	    	@reference << registration[index/2]
	 		end
		end
		@reference << @stock_ref[8]			# Takes the 9th character as described in the description
	end																

	def persisted?
    false
  end

end