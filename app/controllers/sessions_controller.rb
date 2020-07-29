class SessionsController < ApplicationController
  def new
    redirect_to user_path(current_user) if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
       sign_in(user)
       flash[:success] = 'Login efetuado com sucesso!'
       redirect_to contacts_path
    else
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new'
    end

  end

  def destroy
    sign_out
    flash[:success] = 'Logout efetuado com sucesso!'
    redirect_to login_path
  end
  
  
end
