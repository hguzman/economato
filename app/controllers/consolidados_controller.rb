class ConsolidadosController < ApplicationController
  respond_to :html
  before_action :set_consolidado, only: [:show, :edit, :update, :destroy, :entregar_productos]
  before_action :authenticate_user!

  def entregar_productos
    authorize @consolidado
    @consolidado.actualiza_valor
    if @consolidado.save
      flash[:success] = t(".success")
      respond_with @consolidado
    end

    # if @consolidado.update_attribute(:entregada?, true)
    # # if @consolidado.update_attributes(entregada?: true, valor_total: @consolidado.detalles.sum(:valor_total))
    #     flash[:success] = t(".success")
    #     respond_with @consolidado
    # end
  end

  # GET /consolidados
  # GET /consolidados.json
  def index
    @consolidados = Consolidado.all
  end

  # GET /consolidados/1
  # GET /consolidados/1.json
  def show
  end

  # GET /consolidados/new
  def new
    @consolidado = Consolidado.new
    @consolidado.detalles.build
  end

  # GET /consolidados/1/edit
  def edit
    if @consolidado.entregada?
      flash[:info] = t(".info")
      redirect_to consolidado_path(@consolidado)
    end
  end

  # POST /consolidados
  # POST /consolidados.json
  def create
    @consolidado = Consolidado.new(consolidado_params)
    begin
      respond_to do |format|
        if @consolidado.save
          format.html { redirect_to @consolidado, notice: 'Consolidado was successfully created.' }
          format.json { render :show, status: :created, location: @consolidado }
        else
          format.html { render :new }
          format.json { render json: @consolidado.errors, status: :unprocessable_entity }
        end
      end
    rescue ActiveRecord::RecordNotUnique
      flash.now[:alert] = "Productos repetidos"
      render :new
    end
  end

  # PATCH/PUT /consolidados/1
  # PATCH/PUT /consolidados/1.json
  def update
    respond_to do |format|
      if @consolidado.update(consolidado_params)
        format.html { redirect_to @consolidado, notice: 'Consolidado was successfully updated.' }
        format.json { render :show, status: :ok, location: @consolidado }
      else
        format.html { render :edit }
        format.json { render json: @consolidado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consolidados/1
  # DELETE /consolidados/1.json
  def destroy
    @consolidado.destroy
    respond_to do |format|
      format.html { redirect_to consolidados_url, notice: 'Consolidado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consolidado
      @consolidado = Consolidado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consolidado_params
      params.require(:consolidado).permit(:teacher_id, :ficha_id, :contrato_id, detalles_attributes: [:id, :producto_id, :cantidad, :observacion, :_destroy])
    end
end
