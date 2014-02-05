class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :stylist, index: true
      t.belongs_to :appointment, index: true

      t.timestamps
    end
  end
end
