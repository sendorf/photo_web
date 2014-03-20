class Photo

	def generate_reference(stock_ref, registration)
	  #reference = ""
	  #stock_ref.gsub(/\s+/, "")			# Removes spaces from stock_ref
	  #stock_ref.delete("-")					# Removes '-' from stock_ref
	  #registration.gsub(/\s+/, "")		# Removes spaces from registration
	  #registration.delete("-")				# Removes '-' from registration
		registration.reverse!						# Reverses the registration for later proccessing
		(0..(registration*2)-1).each do |index|
	  	if index.even?
	    	reference << stock_ref[index/2]
	  	else
	    	reference << registration[index/2 + 1]
	 		end
		end
		reference << stock_ref[9]
	end

end