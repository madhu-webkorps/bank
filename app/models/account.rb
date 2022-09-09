class Account < ApplicationRecord
  belongs_to :user
  has_many :tranctions

  def update_balance(new_amount)
    self.update(balance: (balance.to_i + new_amount.to_i))
  end
  
end
