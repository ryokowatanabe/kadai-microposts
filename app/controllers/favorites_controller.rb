class FavoritesController < ApplicationController
    before_action :require_user_logged_in


  def index
  end
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りにしました'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りをやめました'
    redirect_to root_url
  end
end
