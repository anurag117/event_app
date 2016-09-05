class UsersController < ApplicationController
  before_action :admin_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  
  def index
    @users = User.all
  end

  
  def show
  end

  def new
    @user = User.new
  end

  def edit
  end


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Signed up!"
    else
      render 'new'
    end
  end

    
  def update
    if @user.update(edit_user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render 'edit'
    end
  end

  
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :gender, :phone_number, :email_id, :password, :password_confirmation)
    end

    def edit_user_params
      params.require(:user).permit(:name, :gender, :phone_number, :email_id, :admin)
    end
end
