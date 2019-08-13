class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.integer :planeNo

      t.timestamps
    end
  end
end
