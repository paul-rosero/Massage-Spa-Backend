class RemoveMassageTherapistFromAppointment < ActiveRecord::Migration[6.0]
  def change

    remove_column :appointments, :massage_therapist, :string
  end
end
