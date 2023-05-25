class Droptable < ActiveRecord::Migration[7.0]
  def change
    drop_table :accounts
   drop_table :suppliers
  end
end
