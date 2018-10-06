class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  def create
    @post = Post.new(book_title: params[:book_title] ,
      author_name_of_book: params[:author_name_of_book],
      name_of_publisher: params[:name_of_publisher],
      release_date: params[:release_date],
      article_title: params[:article_title],
      article_body: params[:article_body])

    @post.save
    redirect_to("/posts/index")
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.new(book_title: params[:book_title] ,
      author_name_of_book: params[:author_name_of_book],
      name_of_publisher: params[:name_of_publisher],
      release_date: params[:release_date],
      article_title: params[:article_title],
      article_body: params[:article_body])

    @post.save
    redirect_to("/posts/index")
  end

end
