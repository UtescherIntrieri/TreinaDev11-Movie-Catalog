class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.string :dob
      t.string :genre

      t.timestamps
    end
  end
end
