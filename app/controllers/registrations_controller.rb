class RegistrationsController < ApplicationController
  def new
    Post.new(post_params)
  end

  def create
    @post = Post.create(post_params)
  end

  def update
  end
  
  
  private
  def post_params
    params.require(:post).permit(:content, :image)
  end
end
