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
        render :json => { result: "success" }
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
        render :json => { result: "success" }
      end
    end
 
    
end