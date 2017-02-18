class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :containers_possible
      t.string :location

      t.timestamps
    end
  end
end
