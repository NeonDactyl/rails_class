class RemoveReleaseYear < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :release_year, :integer
  end
end
