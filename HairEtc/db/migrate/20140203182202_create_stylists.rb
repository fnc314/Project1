class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone

      t.timestamps
    end
  end
end
