class RemoveValueFromTransactions < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :value, :decimal
  end
end
