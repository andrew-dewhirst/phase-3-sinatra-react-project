class User < ActiveRecord::Base
  has_many :reviews
  has_many :trips, through: :reviews
end