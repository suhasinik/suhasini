class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :physician_id
      t.string :patient_id
      t.string :appointment_date

      t.timestamps null: false
    end
  end
end
