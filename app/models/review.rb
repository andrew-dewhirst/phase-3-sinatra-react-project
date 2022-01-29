class Review < ActiveRecord::Base
  belongs_to :trip
  belongs to :user
end