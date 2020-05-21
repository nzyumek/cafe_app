class CafeListCashlesstagsController < ApplicationController
  before_action :set_cafe_list_cashlesstag, only: [:show, :edit, :update, :destroy]

  # GET /cafe_list_cashlesstags
  # GET /cafe_list_cashlesstags.json
  def index
    @cafe_list_cashlesstags = CafeListCashlesstag.all
  end

  # GET /cafe_list_cashlesstags/1
  # GET /cafe_list_cashlesstags/1.json
  def show
  end

  # GET /cafe_list_cashlesstags/new
  def new
    @cafe_list_cashlesstag = CafeListCashlesstag.new
  end

  # GET /cafe_list_cashlesstags/1/edit
  def edit
  end

  # POST /cafe_list_cashlesstags
  # POST /cafe_list_cashlesstags.json
  def create
    @cafe_list_cashlesstag = CafeListCashlesstag.new(cafe_list_cashlesstag_params)

    respond_to do |format|
      if @cafe_list_cashlesstag.save
        format.html { redirect_to @cafe_list_cashlesstag, notice: 'Cafe list cashlesstag was successfully created.' }
        format.json { render :show, status: :created, location: @cafe_list_cashlesstag }
      else
        format.html { render :new }
        format.json { render json: @cafe_list_cashlesstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafe_list_cashlesstags/1
  # PATCH/PUT /cafe_list_cashlesstags/1.json
  def update
    respond_to do |format|
      if @cafe_list_cashlesstag.update(cafe_list_cashlesstag_params)
        format.html { redirect_to @cafe_list_cashlesstag, notice: 'Cafe list cashlesstag was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe_list_cashlesstag }
      else
        format.html { render :edit }
        format.json { render json: @cafe_list_cashlesstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafe_list_cashlesstags/1
  # DELETE /cafe_list_cashlesstags/1.json
  def destroy
    @cafe_list_cashlesstag.destroy
    respond_to do |format|
      format.html { redirect_to cafe_list_cashlesstags_url, notice: 'Cafe list cashlesstag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe_list_cashlesstag
      @cafe_list_cashlesstag = CafeListCashlesstag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cafe_list_cashlesstag_params
      params.require(:cafe_list_cashlesstag).permit(:cafe_list_id, :cashlesstag_id)
    end
end
