class BeantagsController < ApplicationController
  before_action :set_beantag, only: [:show, :edit, :update, :destroy]

  # GET /beantags
  # GET /beantags.json
  def index
    @beantags = Beantag.all
  end

  # GET /beantags/1
  # GET /beantags/1.json
  def show
  end

  # GET /beantags/new
  def new
    @beantag = Beantag.new
  end

  # GET /beantags/1/edit
  def edit
  end

  # POST /beantags
  # POST /beantags.json
  def create
    @beantag = Beantag.new(beantag_params)

    respond_to do |format|
      if @beantag.save
        format.html { redirect_to @beantag, notice: 'Beantag was successfully created.' }
        format.json { render :show, status: :created, location: @beantag }
      else
        format.html { render :new }
        format.json { render json: @beantag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beantags/1
  # PATCH/PUT /beantags/1.json
  def update
    respond_to do |format|
      if @beantag.update(beantag_params)
        format.html { redirect_to @beantag, notice: 'Beantag was successfully updated.' }
        format.json { render :show, status: :ok, location: @beantag }
      else
        format.html { render :edit }
        format.json { render json: @beantag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beantags/1
  # DELETE /beantags/1.json
  def destroy
    @beantag.destroy
    respond_to do |format|
      format.html { redirect_to beantags_url, notice: 'Beantag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beantag
      @beantag = Beantag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beantag_params
      params.require(:beantag).permit(:name, :info)
    end
end
