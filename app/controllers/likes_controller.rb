class LikesController < ApplicationController
    def create
      if @current_user == nil
        flash[:notice] = "ログインが必要です"
         redirect_to("/login")
      else
        @like = Like.new(
            user_id:@current_user.id,
            post_id:params[:post_id]
            )
        @like.save
        like_count = Like.where(post_id:params[:post_id]).count
        render :json => {like_count: like_count }
      end
    

    end
    
    def destroy
      if @current_user == nil
         flash[:notice] = "ログインが必要です"
         redirect_to("/login")
      else
        @like = Like.find_by(
            user_id:@current_user.id,
            post_id:params[:post_id]
            )
        @like.destroy
        like_count = Like.where(post_id:params[:post_id]).count
        render :json => {like_count: like_count }
      end
    end
 
    
end