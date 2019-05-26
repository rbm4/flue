class AdjustEvent < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :data, :string
    remove_column :events, :lat
    remove_column :events, :log
    add_column :events, :categoria, :string
    add_column :events, :descricao, :string
    add_column :events, :participantes, :string
    add_column :events, :hora_inicio, :string
    add_column :events, :hora_fim, :string
    add_column :events, :estado, :string
    add_column :events, :cidade, :string
    add_column :events, :endereco, :string
    add_column :events, :link, :string
    
  end
end
