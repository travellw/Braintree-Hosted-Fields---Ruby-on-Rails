class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :braintree_id
      t.string :amount
      t.string :status
      t.integer :customer_id
    end
  end
end
