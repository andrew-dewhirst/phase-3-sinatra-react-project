class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :activities_completed
      t.string :comments
      t.integer :rating
      t.trip_id :integer
      t.user_id :integer
      t.timestamps
  end
end
