class Admins::CafeListsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    params[:title].blank? ? params[:title]="" : params[:title]
    params[:bean].blank? ? params[:bean]="" : params[:bean]
    params[:location].blank? ? params[:location]="" : params[:location]
    
    @cafe_lists = CafeList.where("title LIKE ? AND bean LIKE ? AND location LIKE ?", "%" + params[:title] + "%", "%" + params[:bean] + "%", "%" + params[:location] + "%")
  end

  def show
    @cafe_list = CafeList.find(params[:id])
    @review = Review.last(1)
    @reviews = @cafe_list.reviews
  end

  def edit
    @cafe_list = CafeList.find(params[:id])
  end
  
  def update
    @cafe_list = cafe_list.find(params[:id])
    @cafe_list.update(cafe_list_params)
    redirect_to admins_cafe_lists_path
  end

  private

    def set_current_user
      @current_user = User.find_by(id: session[:user_id])
    end
    
    def cafe_list_params
      params.require(:cafe_list).permit(:title, :bean, :location, :url, :prefecture, :ward, :info, :access, :parking, :openingtime, :dayoff, :tel, :envir, :wifi, :cashless, :reservation, cafe_list_images: [], beantag_ids: [])
    end
  
end
