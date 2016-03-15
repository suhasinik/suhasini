class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :speciality
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
