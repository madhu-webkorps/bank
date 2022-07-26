class AccountController < ApplicationController

    def withdraw
        @user = User.find(params[:id])
    end

    def deposite 
        @user = User.find(params[:id])
    end
end
