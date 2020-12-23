class AddTValueToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :t_value, :decimal
  end
end
