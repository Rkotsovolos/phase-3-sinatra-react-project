class UserController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Add your routes here
  
    get "/users" do
      users = User.all.to_json
      
    end
  
  
  
  end
  