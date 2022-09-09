class AccountsController < ApplicationController


def new
 @account = Account.new
end


def create
    @account = Account.new(user_params)
    
    if @account.save
      
        redirect_to users_path(id: params[:id]).first
    else
        # rnder create page agian
    end
end


def withdraw
    @account = Account.where(user_id: params[:id]).first 
    # redirect_to edit_account_path 
end

def deposite 
    @user = User.find(params[:id])
end

def update
    @account = Account.find(params[:id])
    if @account.update_attributes(user_params)
     # @account.update_balance(user_params[:ammount].to_i) if user_params[:ammount].present? 
    # debugger
        redirect_to users_path
    else
        # rnder update page agian
    end
end
    
def user_params
    params.require(:account).permit(:user_id , :account_id , :acc_status , :acc_no)
end 


end
