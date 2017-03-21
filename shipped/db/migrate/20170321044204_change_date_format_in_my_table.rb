class ChangeDateFormatInMyTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :jobs, :cost, :integer
  end
end
