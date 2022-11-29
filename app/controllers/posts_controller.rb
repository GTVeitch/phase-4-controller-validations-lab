class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])

    render json: post
  end

  def update
    post = Post.find(params[:id])
    if post.valid?
      post.update(post_params)
      if post.valid?
        render json: post
      else
        render json: { errors: post.errors }, status: :unprocessable_entity
      end
    else
      render json: { errors: post.errors }, status: :not_found
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end