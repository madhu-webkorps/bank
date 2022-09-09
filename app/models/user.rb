class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

       enum role: [:user, :admin]  
       after_initialize :set_default_role, if: :new_record?
       
  def balance
    self.account.present? ? self.account.balance.to_i : 0
  end
  
    private
       def set_default_role
         self.role ||= :user
       end

       has_one :account
       has_many :tranctions
end
