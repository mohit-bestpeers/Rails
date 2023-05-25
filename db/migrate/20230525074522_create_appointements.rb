class CreateAppointements < ActiveRecord::Migration[7.0]
  def change
    create_table :appointements do |t|
      t.string :date
      t.references :patient, null: false, foreign_key: true
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
