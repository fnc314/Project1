class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end
  end
end
