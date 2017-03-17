class ChangeColumnToBook < ActiveRecord::Migration[5.0]
  
  def change
    change_column :book, :price, :integer
    
  end

  # def up
  #   change_column :book, :price, :text
  # end

  # def down
  #   change_column :book, :price, :integer
  # end

end
