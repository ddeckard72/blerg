class PostsController < ApplicationController
  def new
    render :new
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def create
    post = Post.create(title: params[:title],
                       content: params[:content],
                       written_at: DateTime.now)
    redirect_to post_path(post)
  end

  def update
    post = Post.update(title: params[:title],
                      content: params[:content],
                      written_at: DateTime.now)
    redirect_to post_path(post)
  end

  def index
    @posts = Post.page(params[:page]).per(10)
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end
end

