class PostsController < ApplicationController

  def index

    @post = Post.all
  end

  def show
    
      @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url
    else
      render 'new'
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.save
      redirect_to posts_url
    else
      render 'new'
    end
    
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: "Your post was deleted"
  end


  private

  def post_params
    params.require(:post).permit(:author, :content, :image, :title, :date, :preview)
  end

end
