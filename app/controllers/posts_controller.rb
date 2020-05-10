class PostsController < ApplicationController
  def show
    @post = find_post
  end

  def edit
    @post = find_post
  end
  
  def update
    @post = find_post
    @post.update(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def find_post
    Post.find(params[:id])
  end

end
