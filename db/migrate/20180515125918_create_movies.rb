class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :string
      t.string :description
      t.integer :duration
      t.references :director, foreign_key: true
      t.references :address, foreign_key: true
      t.timestamp :release_date

      t.timestamps
    end
  end
end
