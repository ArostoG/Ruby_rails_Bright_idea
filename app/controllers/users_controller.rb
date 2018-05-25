class UsersController < ApplicationController

def show_user
  @user = User.find_by(id:params[:id])
  @post = Post.find_by(user_id:params[:id])

  render "show_user"
end



end
