class RemoveGenreFromDirector < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :genre, :string
  end
end
