class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :accountnumber
      t.integer :supplier_id
      t.timestamps
    end
  end
end
