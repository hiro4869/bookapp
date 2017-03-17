class ChangeColumndToBook < ActiveRecord::Migration[5.0]
  def up
    change_column :books, :rate, :integer
  end

  def down
    change_column :books, :rate, :text
  end
end
