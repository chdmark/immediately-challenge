require 'json'

class MessagesController < ApplicationController
	def index
	end

	def create
		
		parsed_data = JSON.parse(params[:message][:body])
		p "*" * 50
		
		message_body = parsed_data["snippet"]
		ap message_body
		p "*" * 50
	

		p "*" * 50

		ap parsed_data["payload"]["headers"]

		headers = parsed_data["payload"]["headers"]

		date_sent = headers[1]["value"]
		message_author = headers[2]["value"]
		message_recipient = headers[3]["value"]
		message_subject = headers[5]["value"]
		
		ap date_sent
		ap message_author
		ap message_recipient
		ap message_subject
	
	end
	
	def show
	end


end
