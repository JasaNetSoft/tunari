class UsersController < ApplicationController

  #load_and_authorize_resource
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :show]
  before_action :correct_user,   only: []

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all.order('name ASC')
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Gracias por registrar un usuario"
      redirect_to users_url
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Actualizo sus datos correctamente"
      redirect_to users_url
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Usuario eliminado correctamente"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :role, :password, :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Porfavor iniciar sesión."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
