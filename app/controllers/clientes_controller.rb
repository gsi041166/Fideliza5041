class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
 
  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
    #@clientes = Cliente.order("#{sort_column} #{sort_direction}")
    #@clientes = @clientes.page(page).per_page(per_page)
    #if params[:sSearch].present?
    #  @clientes = @clientes.where("nome like :search or loja like :search", search: "%#{params[:sSearch]}%")
    #end
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        #--ADICIONADO
        if params[:cliente][:perfil_ids]
    		  params[:cliente][:perfil_ids].each do |ss|
    			   @cliente.perfilclientes.create(:cliente_id => @cliente.id, :perfil_id => ss)
    		  end
        end
        #--ADICIONADO
        format.html { redirect_to clientes_url, notice: 'Cliente criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @cliente }
      else
        format.html { render action: 'new' }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        #--ADICIONADO
    	 @cliente.perfilclientes.destroy_all()
            if params[:cliente][:perfil_ids]
        		params[:cliente][:perfil_ids].each do |ss|
        			@cliente.perfilclientes.create(:cliente_id => @cliente.id, :perfil_id => ss)
        		end
        end
        #--ADICIONADO
        format.html { redirect_to clientes_url, notice: 'Cliente actualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    #--ADICIONADO
    @cliente.perfilclientes.destroy
    #--ADICIONADO
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:cartao, :nome, :data_nasc, :obs, :rua, :acumulado, :activo, :profissao_id, :grupocliente_id, :localidade_id, :loja_id, :vendedor_id, :sexo_id)
    end
    

  #def page
  #  params[:iDisplayStart].to_i/per_page + 1
  #end

  #def per_page
  #  params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 6
  #end

  #def sort_column
  #  columns = %w[cartao nome loja]
  #  columns[params[:iSortCol_0].to_i]
  #end

  #def sort_direction
  #  params[:sSortDir_0] == "desc" ? "desc" : "asc"
  #end
end
