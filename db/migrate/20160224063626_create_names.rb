class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :speciality
      t.string :phone_no
      t.string :appointments
      t.text :address

      t.timestamps null: false
    end
  end
end
