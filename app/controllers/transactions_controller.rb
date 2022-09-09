class TransactionsController < ApplicationController
  def index
    @transaction = Transaction.all
  end

  def withdraw
    @transaction = Transaction.where(account_id: params[:id]).first
    @account = Account.where(user_id: params[:id]).first 
  end

  def new
    @transaction = Transaction.new
  end

  def create
      @transaction = Transaction.new(user_params)
      
      if @transaction.save
       
          redirect_to users_path(@transaction.user_id)
      else
          # rnder create page agian
          redirect_to root_path
      end
  end
  
private

def user_params
  params.require(:transaction).permit(:deposite_amt , :withdraw_amt,:user_id ,:account_id)
end 

end
