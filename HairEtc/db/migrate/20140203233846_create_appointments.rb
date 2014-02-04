class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :day
      t.integer :date
      t.string :month
      t.integer :year

      t.timestamps
    end
  end
end
