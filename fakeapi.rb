require 'sinatra'
require 'json'
require 'faker'

array = []

get '/students_info' do 
   # user = Hash.new { |hash, key| hash[key] = {} }
   # user = Hash.new
   #      user[:name] = Faker::Superhero.name
   #      user[:email] = Faker::Internet.email        
 		[
 			{ id: 1, name: "David",email: "test1@email.com", slack_id: 1 }, 
 			{ id: 2, name: "Jamie",email: "test2@email.com", slack_id: 2}, 
 			{ id: 3, name: "David",email: "test3@email.com", slack_id: 3}, 
 			{ id: 4, name: "Jamie",email: "test4@email.com", slack_id: 4} 
 		].to_json
end