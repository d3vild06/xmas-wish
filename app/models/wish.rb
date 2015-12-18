class Wish < ActiveRecord::Base
  belongs_to :user

  # form validation
  validates :name, :presence => true
  validates :wish, :presence => true
end
