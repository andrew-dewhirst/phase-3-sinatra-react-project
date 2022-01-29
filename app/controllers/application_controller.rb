class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    trips = Trip.all
    trips.to_json
    # { message: "Good luck with your project!" }.to_json
  end

end
