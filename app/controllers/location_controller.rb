class LocationController < ApplicationController
    set :default_content_type, 'application/json'
    
    get "/locations" do
      locations = Location.all.to_json
    end
  
  
  
  end
  