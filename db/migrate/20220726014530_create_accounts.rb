class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.bigint :balance
      t.bigint :ammount
      t.string :acc_no
      t.string :acc_status

      t.timestamps
    end
  end
end
