class Transaction < ApplicationRecord

    belongs_to :user
    belongs_to :account
    after_save :update_balance
    
    def update_balance
      amount = self.deposite_amt.to_i - self.withdraw_amt.to_i
      old_balance = self.account.balance.to_i
      new_balance = old_balance + amount
      self.account.update(balance: new_balance)
    end
    
end
