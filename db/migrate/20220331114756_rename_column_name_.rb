class RenameColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :shop_name, :title
    rename_column :books, :caption, :body
  end
end
