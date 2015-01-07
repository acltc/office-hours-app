class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_start_time
      t.integer :duration
      t.integer :mentor_id
      t.string :mentee_name
      t.string :mentee_email

      t.timestamps
    end
  end
end
