class SearchEngineController < ApplicationController

	def new
		@engine = SearchEngine.new
	end

end