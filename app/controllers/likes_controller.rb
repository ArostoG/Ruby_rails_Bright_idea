class LikesController < ApplicationController

    def like
        @user = User.find_by(id:session[:user_id])
        @post = Post.find_by(id:params[:id])
        @likes = Like.find_by(user_id:session[:user_id],post_id:params[:id])
      
        if @likes==nil
          @likes = Like.create(user_id:@user.id,post_id:params[:id],mylike:"1")
          redirect_to '/bright_ideas'
        else
          @secret == @likes
          redirect_to '/bright_ideas'
        end
      
      end
end
