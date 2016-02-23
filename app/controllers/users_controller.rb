class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
   if @user.save
      session[:user_id] = @user.id
      redirect_to login_path
    else
      redirect_to :back
    end
  end

def edit
 @user = User.find(params[:id])
 
end

def update
 @user = User.find(params[:id])
 if @user.update_attributes(user_params)
    if @user.roll == "Band" 
      redirect_to band_path
    else
    redirect_to user_path(current_user)
  end
end
end
def destroy
 @user = User.find(params[:id])
 @user.delete
 flash[:notice] = "Account Deleted!"
 redirect_to '/' 
end

def search

end

def search_page
  @users = User.where(roll: params[:query])
  render "search"
end

private
def user_params
  params.require(:user).permit(:fname, :lname, :city, :state, :email, :username, :password, :roll, :avatar)
end

end
