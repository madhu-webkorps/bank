class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.bigint :withdraw_amt
      t.bigint :deposite_amt
      t.datetime :withdraw_time
      t.datetime :deposite_time
      t.references :user
      t.references :account

      t.timestamps
    end
  end
end
