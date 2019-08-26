class AddRatingGrossToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :rating, :string
    add_column :movies, :total_gross, :decimal
  end
end
