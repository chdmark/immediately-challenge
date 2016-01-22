class MessagesController < ApplicationController
	def index
	end

	def create
		pp params
		parsed_data = JSON.parse(params)
		
	end
	
	def show
	end


end
