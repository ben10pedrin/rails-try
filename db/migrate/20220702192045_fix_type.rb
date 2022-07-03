class FixType < ActiveRecord::Migration[7.0]
  def change
    rename_column :animals, :type, :category
  end
end
