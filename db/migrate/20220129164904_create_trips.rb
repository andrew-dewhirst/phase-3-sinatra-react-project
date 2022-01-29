class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.datetime :date_arrived
      t.datetime :date_departed
    end
  end
end
