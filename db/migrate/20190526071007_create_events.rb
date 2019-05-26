class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :lat
      t.string :log
      t.string :tipo
      t.string :name
      t.timestamp :data

      t.timestamps
    end
  end
end
