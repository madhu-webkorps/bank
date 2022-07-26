class CreateTranctions < ActiveRecord::Migration[5.2]
  def change
    create_table :tranctions do |t|
      t.bigint :amt_withdrawn
      t.datetime :withdraw_time
      t.bigint :amt_deposite
      t.datetime :deposite_time
      t.references :user, foreign_key: true
      t.references :account , foreign_key: true

      t.timestamps
    end
  end
end
