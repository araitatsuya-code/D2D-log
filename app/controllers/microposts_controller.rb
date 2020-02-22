class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :update, :destroy]
  before_action :correct_user,   only: :destroy


  def index
    @microposts = Micropost.tagged_with("#{params[:tag_name]}").paginate(page: params[:page], per_page: 10)
  end
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿が完了しました!"
      redirect_to root_url
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
      render 'static_pages/home'
    end
  end

  def edit
    @micropost = current_user.microposts.find_by(id: params[:id]) || nil
    if @micropost.nil?
      flash[:warning] = "編集権限がありません"
      redirect_to root_url
    end
  end

  def update
    @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost.update_attributes(micropost_params)
    if @micropost.save
      flash[:success] = "編集が完了しました"
      redirect_to current_user
    else
      render 'microposts/edit'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture, :time, :tag_list)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
