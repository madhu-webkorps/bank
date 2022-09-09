
class UsersController < ApplicationController
  def index
 if user_signed_in?
    if current_user.admin?
      @users = User.all
      else
        @user = current_user
      end
 end
  end

  def new
      @user  = User.new
  end

  def create
      @user = User.new(user_params)
        if @user.save
           redirect_to users_path(id: params[:id]).first
      else
          # rnder create page agian
      end
  end

  def show 
      @user = User.where(id: params[:id]).first
  end

  def edit 
      @user = User.where(id: params[:id]).first
  end

  def update 
      @user = User.where(id: params[:id]).first
      if @user.update_attributes(user_params)
          redirect_to users_path
      else
          # rnder update page agian
      end
  end

  def destroy 
      @user = User.where(id: params[:id]).first
      if @user.destroy
          redirect_to users_path
      else
          # rnder destroy page agian
      end
  end

  private 

  def user_params
      params.require(:user).permit(:name , :email ,:phone, :aadhar , :role , :address)
  end
      
end

