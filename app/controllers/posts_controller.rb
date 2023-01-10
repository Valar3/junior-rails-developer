class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
      @post = Post.new
  end

  def edit
      @post =  Post.find(params[:id])
  end

  def create
    @post = current_Author.posts.new(post_params)
       if @post.save
      flash[:notice] = "Post was created successfully"
      redirect_to @post
    else
      render 'new'
    end
  end
  def update
    @post =  Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :description, :Author_email))
      flash[:notice] = "Post was updated successfully."
      redirect_to @post
    else
      render 'edit'
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
private

  def post_params
    params.require(:post).permit(:title, :description, :author_id, :category_id )
  end
end
