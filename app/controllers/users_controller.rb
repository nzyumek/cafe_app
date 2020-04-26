class UsersController < ApplicationController
  def show
    @user = current_user
  end
  
  params.require(:user).permit(:profileimage)
  
end
