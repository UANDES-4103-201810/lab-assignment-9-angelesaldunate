class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :address
  has_one :director
  has_many :actors, through: :actor_movies
  has_many :categories
  has_one :adress
end
