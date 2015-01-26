class AddColumnToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :available, :boolean, :default => true
  end
end
