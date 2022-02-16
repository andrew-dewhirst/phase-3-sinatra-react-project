class Trip < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def self.sort_by_location
    self.all.order(:location)
  end
end