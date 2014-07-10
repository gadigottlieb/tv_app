class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  def index
    # @users = User.all
    redirect_to home_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:current_user] = nil
    redirect_to users_path
  end

  private

  def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :email, :birthday, :phone)
  end


end
