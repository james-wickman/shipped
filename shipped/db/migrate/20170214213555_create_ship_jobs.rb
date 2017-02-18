class CreateShipJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_jobs do |t|
      t.references :job, foreign_key: true
      t.references :ship, foreign_key: true

      t.timestamps
    end
  end
end
