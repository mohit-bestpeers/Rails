class AddTermToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :term, :string
  end
end
