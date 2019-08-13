class AddAirplaneIdToFlights < ActiveRecord::Migration[5.2]
  def change
    add_reference :flights, :airplane, foreign_key: true
  end
end
