class StylejgsController < ApplicationController
  before_action :set_stylejg, only: [:show, :edit, :update, :destroy]

  # GET /stylejgs
  # GET /stylejgs.json
  def index
    @stylejgs = Stylejg.all
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end

  # GET /stylejgs/1
  # GET /stylejgs/1.json
  def show
  end

  # GET /stylejgs/new
  def new
    @stylejg = Stylejg.new
  end

  # GET /stylejgs/1/edit
  def edit
  end

  # POST /stylejgs
  # POST /stylejgs.json
  def create
    @stylejg = Stylejg.new(stylejg_params)

    respond_to do |format|
      if @stylejg.save
        format.html { redirect_to @stylejg, notice: 'Stylejg was successfully created.' }
        format.json { render :show, status: :created, location: @stylejg }
      else
        format.html { render :new }
        format.json { render json: @stylejg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stylejgs/1
  # PATCH/PUT /stylejgs/1.json
  def update
    respond_to do |format|
      if @stylejg.update(stylejg_params)
        format.html { redirect_to @stylejg, notice: 'Stylejg was successfully updated.' }
        format.json { render :show, status: :ok, location: @stylejg }
      else
        format.html { render :edit }
        format.json { render json: @stylejg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stylejgs/1
  # DELETE /stylejgs/1.json
  def destroy
    @stylejg.destroy
    respond_to do |format|
      format.html { redirect_to stylejgs_url, notice: 'Stylejg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylejg
      @stylejg = Stylejg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stylejg_params
      params.require(:stylejg).permit(:title, :context, :image)
    end
end
