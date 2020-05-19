class CafeListsController < ApplicationController
  #prepend_before_action :authenticate_user! && :authenticate_admin!, only: [:edit, :destroy] 
  before_action :set_cafe_list, only: [:show, :edit, :update, :destroy, :sort, :upload_file]
  before_action :set_current_user

  # GET /cafe_lists
  # GET /cafe_lists.json
  def index
    #if !params[:q].blank? #nil または空文字じゃなかった場合
      #@cafe_lists = CafeList.where("title LIKE ?", "%" + params[:q] + "%")
      #@cafe_lists = CafeList.where("title LIKE ? AND bean LIKE ?", "%" + params[:q] + "%", "%" + params[:b] + "%")
   #else
      #@cafe_lists = CafeList.all
    ##@search_params = cafe_list_search_params
    ##@cafe_lists = Cafe_list.search(@search_params).includes(:prefecture)
    
    #三項演算子20200226
    params[:title].blank? ? params[:title]="" : params[:title]
    params[:bean].blank? ? params[:bean]="" : params[:bean]
    params[:location].blank? ? params[:location]="" : params[:location]
    
    @cafe_lists = CafeList.where("title LIKE ? AND bean LIKE ? AND location LIKE ?", "%" + params[:title] + "%", "%" + params[:bean] + "%", "%" + params[:location] + "%")
    @cafe_lists = CafeList.page(params[:page]).per(6).order(:id)
    #elsif params[:bean]
      #  @cafe_lists = CafeList.where("bean LIKE ?", "%" + params[:bean] + "%")
    #elsif params[:location]
     #   @cafe_lists = CafeList.where("location LIKE ?", "%" + params[:location] + "%")
  end
  
  #def search
    #  @cafe_lists = CafeList.where("title LIKE ?", "%" + params[:q] + "%")
   #   @cafe_lists = CafeList.where("title LIKE ? AND bean LIKE ?", "%" + params[:q] + "%", "%" + params[:b] + "%")
  #end

  # def cafe_list_search_params
    # params.fetch(:search, {}).permit(:title, :bean, :location)
  # end

  # GET /cafe_lists/1
  # GET /cafe_lists/1.json
  def show
    # @review = Review.last(1)
    @review = @cafe_list.reviews.last
  end

  # GET /cafe_lists/new
  def new
    @cafe_list = CafeList.new
  end

  # GET /cafe_lists/1/edit
  def edit
  end

  # POST /cafe_lists
  # POST /cafe_lists.json
  def create
    #cafe_list_params[:image_url].each do |a|
      @cafe_list = CafeList.new(cafe_list_params) #clone.merge({image: a}))
      #if user_signed_in?
        @cafe_list.user_id = current_user.id
      #else
        #@cafe_list.user_id = nil
      #end
      # @cafe_list.cafe_list_images.create(image_params)
      respond_to do |format|
        if @cafe_list.save
          format.html { redirect_to @cafe_list, notice: 'Cafe was successfully created.' }
          format.json { render :show, status: :created, location: @cafe_list}
        else
          format.html { render :new }
          format.json { render json: @cafe_list.errors, status: :unprocessable_entity }
        end
      end
    #end  
  end

  # PATCH/PUT /cafe_lists/1
  # PATCH/PUT /cafe_lists/1.json
  def update
    #elsif admin_signed_in?
      @cafe_list.cafe_list_images.detach
    #cafe_list_params[:image_url].each do |a|
      respond_to do |format|
        if @cafe_list.update(cafe_list_params)#.clone.merge({image_url: a}))
          cafe_lists_path and return
        else
          format.html { render :edit }
          format.json { render json: @cafe_list.errors, status: :unprocessable_entity }
        end
      end
      #@cafe_list.cafe_list_images.detach #一旦、すべてのimageの紐つけを解除
        #if @cafe_list.update(item_params)
          #redirect_to @cafe_list, notice: 'Item was successfully updated.'
        #else
          #render :edit
        #end
    #end
  end

  # DELETE /cafe_lists/1
  # DELETE /cafe_lists/1.json
  def destroy
    @cafe_list.destroy
    respond_to do |format|
      format.html { redirect_to cafe_lists_url, notice: 'Cafe list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_user
      @current_user = User.find_by(id: session[:user_id])
    end
        
    def set_cafe_list
      @cafe_list = CafeList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cafe_list_params
      params.require(:cafe_list).permit(:title, :bean, :location, :url, :info, :access, :prefecture, :ward, :parking, :openingtime, :dayoff, :tel, :envir, :wifi, :reservation, cashlesses: [], cafe_list_images: [], beantag_ids: [] )
    end

    
    # def image_params
    #   params.require(:cafe_list_image).permit(:image_url[])
    # end
end
