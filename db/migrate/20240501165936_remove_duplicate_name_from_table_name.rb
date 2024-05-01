class RemoveDuplicateNameFromTableName < ActiveRecord::Migration[7.1]
  def change
    remove_column :table_names, :name, :string
  end
end
