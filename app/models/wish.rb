class Wish < ActiveRecord::Base
  belongs_to :user

  # form validation
  validates :wish, :presence => true
end
