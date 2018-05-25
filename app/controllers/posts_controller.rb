class PostsController < ApplicationController


    def display
        @user = User.find_by(id:session[:user_id])
        @post = Post.all
        render "display"
       end


       def new_idea
        @post = Post.create(content:params[:content],user_id:session[:user_id])
          if @post.valid?
            redirect_to '/bright_ideas'
          else
          flash[:messages] = @post.errors.full_messages
          redirect_to '/bright_ideas'
          end
        end
        
        def show_idea
          @user = User.find(session[:user_id])
          @post = Post.find_by(id:params[:id])
          @likes = Like.where(post_id:params[:id])
        
          render "show_idea"
        end

        def delete_post
          @post = Post.find(params[:id])
          @post.destroy
          redirect_to '/bright_ideas'
        end
end
