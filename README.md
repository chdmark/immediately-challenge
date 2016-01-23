# Immediately Worktest

## Setting Up the Environment

1. After cloning the repo from Github, type "bundle install" in your terminal to install the necessary gems. 

## Setting Up the Database

1. Create the database first. Run "rake db:create" in the terminal
2. Migrate the database. Run "rake db:migrate" in the terminal 


## Running the Server

1. To start the server, run "rails s".
2. Type http://localhost:3000 in your browser

## Submit the Message in the form

1. In the root path, input the message.json string into the submission box. 

## Accessing and checking the database

1. In the terminal, run "rails c" to open up the Rails console
2. You can access the tables here and migrations by running ActiveRecord commands. 
3. For example, to find a specific record associated with an id in the Messages table, type "Message.find_by(id: 1)" to access that record or any attribute in the table. 

## Database & Architecture Design 

The database was designed to store relevant information from the message.json file. It was created with five columns with sender, recipient, date_sent, subject, and body as the attributes. The json data was parsed in the backend by using JSON.parse after submitting the form. After extracting the data, the relevant data was stored in the database as an object. 

