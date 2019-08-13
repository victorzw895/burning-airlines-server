class AddColumnsToAirplanes < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :row, :integer
    add_column :airplanes, :columns, :text
  end
end
