class GrupoclientesController < ApplicationController
  before_action :set_grupocliente, only: [:show, :edit, :update, :destroy]

  # GET /grupoclientes
  # GET /grupoclientes.json
  def index
    @grupoclientes = Grupocliente.all
  end

  # GET /grupoclientes/1
  # GET /grupoclientes/1.json
  def show
  end

  # GET /grupoclientes/new
  def new
    @grupocliente = Grupocliente.new
  end

  # GET /grupoclientes/1/edit
  def edit
  end

  # POST /grupoclientes
  # POST /grupoclientes.json
  def create
    @grupocliente = Grupocliente.new(grupocliente_params)

    respond_to do |format|
      if @grupocliente.save
        format.html { redirect_to @grupocliente, notice: 'Grupocliente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grupocliente }
      else
        format.html { render action: 'new' }
        format.json { render json: @grupocliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupoclientes/1
  # PATCH/PUT /grupoclientes/1.json
  def update
    respond_to do |format|
      if @grupocliente.update(grupocliente_params)
        format.html { redirect_to @grupocliente, notice: 'Grupocliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grupocliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupoclientes/1
  # DELETE /grupoclientes/1.json
  def destroy
    @grupocliente.destroy
    respond_to do |format|
      format.html { redirect_to grupoclientes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupocliente
      @grupocliente = Grupocliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupocliente_params
      params.require(:grupocliente).permit(:descricao, :racio)
    end
end
