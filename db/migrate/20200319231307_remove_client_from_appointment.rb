class RemoveClientFromAppointment < ActiveRecord::Migration[6.0]
  def change

    remove_column :appointments, :client, :string
  end
end
