class AddImageToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :image_file_name, :string, default: ""
  end
end
