class ReviewsController < ApplicationController
  #before_action :set_review, only: [:show, :edit, :update, :destroy, :sort]    
  before_action :set_current_user  
    
    def index
        @cafe_list_id = params[:cafe_list_id]
        @cafe_list = CafeList.find(params[:cafe_list_id])
        
        # TODO @cafe_list_idを利用してReviewsテーブルから該当のReviewを持ってくる
        # TODO @reviewsという配列に格納する
        @reviews = Review.where(cafe_list_id: @cafe_list_id)
        #@user = current_user #???
    end
    
    def show
        @review = Review.new
        #reviews = @cafe_list.reviews
    end
    
    def new
        @cafe_list_id = params[:cafe_list_id]
        #@cafe_list_id = CafeList.find(params[:cafe_list_id])
        @review = Review.new
        #redirect_to reviews_path
        #@reviews = @cafe_list.reviews
    end
    
    def edit
      @review = Review.find(params[:id])
      @cafe_list_id = params[:cafe_list_id]
    end
    
    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        #respond_to do |format|
            if @review.save
                redirect_to cafe_list_reviews_path
              #format.html { redirect_to reviews_path, notice: 'Cafe was successfully created.' }
              #format.json { render :show, status: :created, location: @review}
            else
                render :new
              #format.html { render :new }
              #format.json { render json: @review.errors, status: :unprocessable_entity }
            end
          #end        
    end
    
    def update
      if @review.user != current_user
        redirect_to cafe_list_reviews_path
      end      
      @review = Review.find(params[:id])
      @cafe_list_id = params[:cafe_list_id]
    #cafe_list_params[:image_url].each do |a|
        if @review.update(review_params)
            redirect_to cafe_list_reviews_path
        else
            render :edit
        end
      #respond_to do |format|
        #if @review.update(review_params)#.clone.merge({image_url: a}))
          #format.html { redirect_to reviews_path, notice: 'Cafe was successfully updated.' and return}
          #format.json { render :show, status: :ok, location: @cafe_list and return}
        #else
          #format.html { render :edit }
          #format.json { render json: @cafe_list.errors, status: :unprocessable_entity }
        #end
      #end
      #@cafe_list.cafe_list_images.detach #一旦、すべてのimageの紐つけを解除
        #if @cafe_list.update(item_params)
          #redirect_to @cafe_list, notice: 'Item was successfully updated.'
        #else
          #render :edit
        #end
    #end
    end
    
    def destroy
      @review = Review.find(params[:id])
      @cafe_list_id = params[:cafe_list_id]
      @review.destroy
      respond_to do |format|
        format.html { redirect_to cafe_list_reviews_path, notice: 'Cafe list was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    private
    
        def set_current_user
          @current_user = User.find_by(id: session[:user_id])
        end
        
        #def set_review
          #@review = Review.find(params[:id])
        #end

        
        def review_params
            params.require(:review).permit(:title, :content, :rate, :cafe_list_id, review_images: [])
        end
end
