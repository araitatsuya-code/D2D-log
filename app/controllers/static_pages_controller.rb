class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10).search(params[:search])
      @likes = Like.where(micropost_id: params[:micropost_id])
      if params[:tag_name]
        @microposts = Micropost.tagged_with("#{params[:tag_name]}")
      end
    end
  end

  def help
  end


  def about
  end

  def contact
  end
end
