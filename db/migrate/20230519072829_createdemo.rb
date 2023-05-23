class Createdemo < ActiveRecord::Migration[7.0]
  def change
    add_column :article, :term, :string
  end
end
