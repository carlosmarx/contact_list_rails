class UsersController < ApplicationController

  before_action :require_logged_in_user, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário cadastrado com sucesso!'
      redirect_to root_url
    else
      render 'new'
    end
  end 

  def show
  end

  def edit
  end
  
  def update
    if current_user.update(user_params)
      flash[:success] = 'Dados atualizados com sucesso'
      redirect_to contacts_path
    else
      render 'edit'
    end
  end
  

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :status, :password, :password_confirmation)
  end
end
