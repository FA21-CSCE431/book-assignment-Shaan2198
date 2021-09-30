class AddFieldsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :date, :date
    add_column :books, :price, :int
  end
end
