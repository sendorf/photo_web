class SearchEngineController < ApplicationController

	def index
		@engine = SearchEngine.new
	end

end