class SearchEngine

  include ActiveModel::Validations
  include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_reader :stock_ref, :registration, :reference

	def initialize(stock_ref = "", registration = "" )
		if(stock_ref.size !=0)
			@stock_ref = stock_ref
		else
			@stock_ref = ""
		end
		if(registration.size !=0)
			@registration = registration
		else
			@registration = ""
		end
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
		@registration.reverse!						# Reverses the registration for later proccessing
		(0...@registration.size*2).each do |index|
	  	if index.even?
	    	@reference << @stock_ref[index/2]
	  	else
	    	@reference << @registration[index/2]
	 		end
		end
		@reference << @stock_ref[10]			# Eventhoug the challenge description says it should
	end																# take the 9th character, the one taken is the 11th

	def persisted?
    false
  end

end