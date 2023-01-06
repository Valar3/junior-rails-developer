class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_author, except: [:show, :index]
  before_action :require_same_author, only: [:edit, :update, :destroy]


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
    @post = Post.new(params.require(:post).permit(:title, :description, :author_id ))
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
  def require_same_author
    if current_user != @post.user
      flash[:alert] = "You can only edit or delete your own article"
      redirect_to @post
    end
  end

end
