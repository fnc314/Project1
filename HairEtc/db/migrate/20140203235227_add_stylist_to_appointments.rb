class AddStylistToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :stylist, index: true
  end
end
