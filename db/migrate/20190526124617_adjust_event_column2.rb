class AdjustEventColumn2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :data
    remove_column :events, :log
    remove_column :events, :lat
  end
end
