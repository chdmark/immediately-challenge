require 'json'

class MessagesController < ApplicationController
	def index
	end

	def create
		
		parsed_data = JSON.parse(params[:message][:body])
		p "*" * 50
		
		

		headers = parsed_data["payload"]["headers"]

		message_body = parsed_data["snippet"]
		date_sent = headers[1]["value"]
		message_author = headers[2]["value"]
		message_recipient = headers[3]["value"]
		message_subject = headers[5]["value"]
		
		
		message = Message.new(sender: message_author, recipient: message_recipient, date_sent: date_sent, subject: message_subject, body: message_body)

		if message.save 
			redirect_to root_path
		else
			flash[:error] = "Message not saved succesfully"
			redirect_to root_path
		end
	
	end
	
	def show
	end


end
