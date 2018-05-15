json.extract! movie, :id, :title, :string, :description, :duration, :director_id, :address_id, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
