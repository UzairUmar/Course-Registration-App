class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

def index
    @users = User.alphabetical
end

def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to user_path(@user), notice: "#{@user.name} was added to the system."
    else
        render action: 'new'
    end
end

def update
    if @user.update(user_params)
        redirect_to user_path(@user), notice: "#{@user.name} was revised in the system."
    else
        render action: 'edit'
    end
end

def destroy
    @user.destroy
    redirect_to users_url
end


private
def user_params
  params.require(:user).permit(:first_name, :last_name)
end

def set_user
    @user = User.find(params[:id])
  end
end
