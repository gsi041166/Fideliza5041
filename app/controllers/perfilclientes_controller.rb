class PerfilclientesController < ApplicationController
  before_action :set_perfilcliente, only: [:show, :edit, :update, :destroy]

  # GET /perfilclientes
  # GET /perfilclientes.json
  def index
    @perfilclientes = Perfilcliente.all
  end

  # GET /perfilclientes/1
  # GET /perfilclientes/1.json
  def show
  end

  # GET /perfilclientes/new
  def new
    @perfilcliente = Perfilcliente.new
  end

  # GET /perfilclientes/1/edit
  def edit
  end

  # POST /perfilclientes
  # POST /perfilclientes.json
  def create
    @perfilcliente = Perfilcliente.new(perfilcliente_params)

    respond_to do |format|
      if @perfilcliente.save
        format.html { redirect_to @perfilcliente, notice: 'Perfilcliente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @perfilcliente }
      else
        format.html { render action: 'new' }
        format.json { render json: @perfilcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfilclientes/1
  # PATCH/PUT /perfilclientes/1.json
  def update
    respond_to do |format|
      if @perfilcliente.update(perfilcliente_params)
        format.html { redirect_to @perfilcliente, notice: 'Perfilcliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @perfilcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfilclientes/1
  # DELETE /perfilclientes/1.json
  def destroy
    @perfilcliente.destroy
    respond_to do |format|
      format.html { redirect_to perfilclientes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfilcliente
      @perfilcliente = Perfilcliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfilcliente_params
      params.require(:perfilcliente).permit(:cliente_id, :perfil_id)
    end
end
