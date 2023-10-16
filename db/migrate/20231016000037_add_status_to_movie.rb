class AddStatusToMovie < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :status, :integer, default: 0
  end
end
