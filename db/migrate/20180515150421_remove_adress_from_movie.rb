class RemoveAdressFromMovie < ActiveRecord::Migration[5.2]
  def change
    remove_reference :movies, :address, foreign_key: true
  end
end
