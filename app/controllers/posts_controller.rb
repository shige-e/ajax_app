class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # コメントアウト
  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to acton: :index #
  end
end
