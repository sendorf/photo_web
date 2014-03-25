class SearchEnginesController < ApplicationController

	def new
		@engine = SearchEngine.new
	end

	def create
		@engine = SearchEngine.new(params[:search_engine][:stock_ref], params[:search_engine][:registration])
		puts @engine.generate_reference
		if @engine.valid?
			redirect_to search_engines_path(:ref => @engine.generate_reference)
		else
			render :action => 'new'
		end
	end

	def index
		@candidate_images = SearchEngine.new.generate_candidates(params[:ref])
	end

end