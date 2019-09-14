class AddFieldsToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :cast, :string
    add_column :movies, :director, :string
    add_column :movies, :duration, :string
  end
end
