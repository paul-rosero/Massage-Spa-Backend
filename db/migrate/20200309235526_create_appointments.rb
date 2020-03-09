class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :massage_therapist
      t.string :client
      t.string :modality
      t.string :appointment_time
      t.string :special_request

      t.timestamps
    end
  end
end
