class AddForiginFromAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :suppliers, index: false,foreign_key: true

  end
end
