class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trips" do
    trips = Trip.all
    trips.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

end
