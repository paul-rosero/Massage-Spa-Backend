class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :massage_therapist
      t.string :client
      t.string :modality
      t.string :appointment_time
      t.string :special_request
      t.belongs_to :massage_therapist, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
