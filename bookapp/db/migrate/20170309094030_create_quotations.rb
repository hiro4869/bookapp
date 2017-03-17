class CreateQuotations < ActiveRecord::Migration[5.0]
  def change
    create_table :quotations do |t|
      t.text :body
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
