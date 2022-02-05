class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trips" do
    trips = Trip.all
    trips.to_json(include: :reviews)
  end

  get "/trips/:id" do
    trip = Trip.find(params[:id])
    trip.to_json(include: :reviews)
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

end
