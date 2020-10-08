class UsersController < ApplicationController
  
  def index
    @users=User.all
  end

  def show
    @user =User.find(params[:id])
  end
 
  def new
    @user = User.new 
  end
  
  def create
    @user =User.new(params.require(:user).permit(:name, :email))
    if @user.valid?
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_student_path
    end
  end
  
  def edit
    @user =User.find(params[:id])
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :email)
    end

end
