class RemoveSupplierIdFromAccount < ActiveRecord::Migration[7.0]
  def change
    remove_column :accounts,:supplier_id
  end
end
