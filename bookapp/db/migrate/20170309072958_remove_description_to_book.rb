class RemoveDescriptionToBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :description, :integer
  end
end
