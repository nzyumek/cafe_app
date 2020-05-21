class CashlesstagsController < ApplicationController
  before_action :set_cashlesstag, only: [:show, :edit, :update, :destroy]

  # GET /cashlesstags
  # GET /cashlesstags.json
  def index
    @cashlesstags = Cashlesstag.all
  end

  # GET /cashlesstags/1
  # GET /cashlesstags/1.json
  def show
  end

  # GET /cashlesstags/new
  def new
    @cashlesstag = Cashlesstag.new
  end

  # GET /cashlesstags/1/edit
  def edit
  end

  # POST /cashlesstags
  # POST /cashlesstags.json
  def create
    @cashlesstag = Cashlesstag.new(cashlesstag_params)

    respond_to do |format|
      if @cashlesstag.save
        format.html { redirect_to @cashlesstag, notice: 'Cashlesstag was successfully created.' }
        format.json { render :show, status: :created, location: @cashlesstag }
      else
        format.html { render :new }
        format.json { render json: @cashlesstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashlesstags/1
  # PATCH/PUT /cashlesstags/1.json
  def update
    respond_to do |format|
      if @cashlesstag.update(cashlesstag_params)
        format.html { redirect_to @cashlesstag, notice: 'Cashlesstag was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashlesstag }
      else
        format.html { render :edit }
        format.json { render json: @cashlesstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashlesstags/1
  # DELETE /cashlesstags/1.json
  def destroy
    @cashlesstag.destroy
    respond_to do |format|
      format.html { redirect_to cashlesstags_url, notice: 'Cashlesstag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashlesstag
      @cashlesstag = Cashlesstag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashlesstag_params
      params.require(:cashlesstag).permit(:name)
    end
end
