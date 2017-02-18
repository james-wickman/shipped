class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.integer :containers_needed
      t.decimal :cost
      t.text :description
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
