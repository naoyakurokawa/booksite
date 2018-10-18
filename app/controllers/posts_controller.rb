class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(book_title: params[:book_title] ,
      author_name_of_book: params[:author_name_of_book],
      name_of_publisher: params[:name_of_publisher],
      release_date: params[:release_date],
      article_title: params[:article_title],
      article_body: params[:article_body])

    if @post.save

     redirect_to("/posts/index")
   else
     render("/posts/new")
   end
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.book_title = params[:book_title]
    @post.author_name_of_book = params[:author_name_of_book]
    @post.name_of_publisher = params[:name_of_publisher]
    @post.release_date = params[:release_date]
    @post.article_title = params[:article_title]
    @post.article_body = params[:article_body]

      if @post.save
       redirect_to("/posts/index")
     else
       render("/posts/edit")
     end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

end
