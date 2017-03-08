class PostsController < ApplicationController
  def new
      @post = Post.new
  end

  def filename
    syms = ['a'..'z','A'..'Z','0'..'9'].map{ |range| range.to_a }.flatten
    @description = (0...8).map{ syms[ rand(syms.size) ] }.join
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy

  redirect_to posts_path
end

  def create
    @post = Post.new(permit_post)
    if @post.save
      flash[:success] = "Success!"
      redirect_to post_path(@post)
    else
      flase[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  private
  def permit_post
    filename
    params.require(:post).permit(:title,:image, :description)
  end

end
