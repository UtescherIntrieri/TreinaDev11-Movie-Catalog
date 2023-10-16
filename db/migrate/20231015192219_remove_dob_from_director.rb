class RemoveDobFromDirector < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :dob, :string
  end
end
