class AddAccounthistory < ActiveRecord::Migration[7.0]
  def change
    add_column :accounthistories ,:transition,:string
  end
end
