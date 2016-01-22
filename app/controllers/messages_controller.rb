require 'json'

class MessagesController < ApplicationController
	def index
	end

	def create
		ap "*" * 50
		ap params[:message][:body]
		ap "*" *50
		parsed_data = JSON.parse(params[:message][:body])
		ap parsed_data

	
	end
	
	def show
	end


end
