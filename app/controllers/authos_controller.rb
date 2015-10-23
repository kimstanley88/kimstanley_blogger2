class AuthosController < ApplicationController
  before_action :set_autho, only: [:show, :edit, :update, :destroy]

  # GET /authos
  # GET /authos.json
  def index
    @authos = Autho.all
  end

  # GET /authos/1
  # GET /authos/1.json
  def show
  end

  # GET /authos/new
  def new
    @autho = Autho.new
  end

  # GET /authos/1/edit
  def edit
  end

  # POST /authos
  # POST /authos.json
  def create
    @autho = Autho.new(autho_params)

    respond_to do |format|
      if @autho.save
        format.html { redirect_to @autho, notice: 'Autho was successfully created.' }
        format.json { render :show, status: :created, location: @autho }
      else
        format.html { render :new }
        format.json { render json: @autho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authos/1
  # PATCH/PUT /authos/1.json
  def update
    respond_to do |format|
      if @autho.update(autho_params)
        format.html { redirect_to @autho, notice: 'Autho was successfully updated.' }
        format.json { render :show, status: :ok, location: @autho }
      else
        format.html { render :edit }
        format.json { render json: @autho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authos/1
  # DELETE /authos/1.json
  def destroy
    @autho.destroy
    respond_to do |format|
      format.html { redirect_to authos_url, notice: 'Autho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autho
      @autho = Autho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autho_params
      params.require(:autho).permit(:username, :email, :password, :password_confirmation)
    end
end
