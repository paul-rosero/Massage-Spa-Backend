class CreateMassageTherapists < ActiveRecord::Migration[6.0]
  def change
    create_table :massage_therapists do |t|
      t.string :name
      t.string :sex
      t.integer :rating
      t.belongs_to :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
