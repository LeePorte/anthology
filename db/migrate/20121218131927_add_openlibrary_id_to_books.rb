class AddOpenlibraryIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :openlibrary_id, :string
  end
end
