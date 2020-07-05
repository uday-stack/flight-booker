class AddReferencesToFlights < ActiveRecord::Migration[5.2]
  def change
    add_reference :flights, :to_airport, index:true, foreign_key: { to_table: :airports }
    add_reference :flights, :from_airport, index:true, foreign_key: { to_table: :airports }
    add_column :flights, :duration, :integer
    add_column :flights, :start_time, :date
  end
end
