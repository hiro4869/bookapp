class RemovePricebToBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :price, :text
  end
end
