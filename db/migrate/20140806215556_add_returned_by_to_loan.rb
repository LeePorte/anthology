class AddReturnedByToLoan < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :returned_by_id, :integer
  end
end
