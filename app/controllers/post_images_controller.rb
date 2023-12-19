class PostImagesController < ApplicationController
  def new
    @postimage = PostImage.new
  end
  
  def create
    @postimage = PostImage.new(postimage_params)
    @postimage.user_id = current_user.id
    @postimage.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.all
  end

  def show
    @post_image = PostImage.find(params[:id])
  end
  
  private
  
  def postimage_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
