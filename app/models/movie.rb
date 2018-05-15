class Movie < ApplicationRecord
  belongs_to :director
  has_many :actors, through: :actor_movies
  has_many :categories
  has_one :address
  accepts_nested_attributes_for :address

end
