class AddQuantityToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :quantity, :integer
  end
end
