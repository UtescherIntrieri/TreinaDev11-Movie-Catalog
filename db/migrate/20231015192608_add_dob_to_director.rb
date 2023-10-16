class AddDobToDirector < ActiveRecord::Migration[7.1]
  def change
    add_column :directors, :dob, :date
  end
end
