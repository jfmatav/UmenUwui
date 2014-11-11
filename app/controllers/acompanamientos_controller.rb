class AcompanamientosController < ApplicationController
  before_action :set_acompanamiento, only: [:show, :edit, :update, :destroy]

  # GET /acompanamientos
  # GET /acompanamientos.json
  def index
    @acompanamientos = Acompanamiento.all
  end

  # GET /acompanamientos/1
  # GET /acompanamientos/1.json
  def show
  end

  # GET /acompanamientos/new
  def new
    @acompanamiento = Acompanamiento.new
  end

  # GET /acompanamientos/1/edit
  def edit
  end

  # POST /acompanamientos
  # POST /acompanamientos.json
  def create
    @acompanamiento = Acompanamiento.new(acompanamiento_params)

    respond_to do |format|
      if @acompanamiento.save
        format.html { redirect_to @acompanamiento, notice: 'Acompanamiento was successfully created.' }
        format.json { render :show, status: :created, location: @acompanamiento }
      else
        format.html { render :new }
        format.json { render json: @acompanamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acompanamientos/1
  # PATCH/PUT /acompanamientos/1.json
  def update
    respond_to do |format|
      if @acompanamiento.update(acompanamiento_params)
        format.html { redirect_to @acompanamiento, notice: 'Acompanamiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @acompanamiento }
      else
        format.html { render :edit }
        format.json { render json: @acompanamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acompanamientos/1
  # DELETE /acompanamientos/1.json
  def destroy
    @acompanamiento.destroy
    respond_to do |format|
      format.html { redirect_to acompanamientos_url, notice: 'Acompanamiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acompanamiento
      @acompanamiento = Acompanamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acompanamiento_params
      params.require(:acompanamiento).permit(:acompanamientos, :dia, :semana, :soda_id)
    end
end
