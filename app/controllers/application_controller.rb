class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trips" do
    trips = Trip.all
    trips.to_json(include: :reviews)
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  post '/reviews' do
    review = Review.create(
      activities_completed: params[:activities_completed],
      comments: params[:comments],
      rating: params[:rating],
      date_arrived: params[:date_arrived],
      date_departed: params[:date_departed],
      trip_id: params[:trip_id],
      user_id: params[:user_id]
    )
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end 

end
