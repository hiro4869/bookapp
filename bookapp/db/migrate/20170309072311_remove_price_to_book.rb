class RemovePriceToBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :Price, :text
  end
end
