class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.integer :customer_id
    end
  end
end
