class HpsController < ApplicationController
  before_action :set_hp, only: [:show, :edit, :update, :destroy]

  # GET /hps
  # GET /hps.json
  def index
    @hps = Hp.all
  end

  # GET /hps/1
  # GET /hps/1.json
  def show
  end

  # GET /hps/new
  def new
    @hp = Hp.new
  end

  # GET /hps/1/edit
  def edit
  end

  # POST /hps
  # POST /hps.json
  def create
    @hp = Hp.new(hp_params)

    respond_to do |format|
      if @hp.save
        format.html { redirect_to @hp, notice: 'Hp was successfully created.' }
        format.json { render :show, status: :created, location: @hp }
      else
        format.html { render :new }
        format.json { render json: @hp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hps/1
  # PATCH/PUT /hps/1.json
  def update
    respond_to do |format|
      if @hp.update(hp_params)
        format.html { redirect_to @hp, notice: 'Hp was successfully updated.' }
        format.json { render :show, status: :ok, location: @hp }
      else
        format.html { render :edit }
        format.json { render json: @hp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hps/1
  # DELETE /hps/1.json
  def destroy
    @hp.destroy
    respond_to do |format|
      format.html { redirect_to hps_url, notice: 'Hp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hp
      @hp = Hp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hp_params
      params.fetch(:hp, {})
    end
end
