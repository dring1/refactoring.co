class RefactorsController < ApplicationController
  before_action :set_refactor, only: [:show, :edit, :update, :destroy]

  # GET /refactors
  # GET /refactors.json
  def index
    @refactors = Refactor.all
  end

  # GET /refactors/1
  # GET /refactors/1.json
  def show
  end

  # GET /refactors/new
  def new
    @refactor = Refactor.new
  end

  # GET /refactors/1/edit
  def edit
  end

  # POST /refactors
  # POST /refactors.json
  def create
    @refactor = Refactor.new(refactor_params)

    respond_to do |format|
      if @refactor.save
        format.html { redirect_to @refactor, notice: 'Refactor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @refactor }
      else
        format.html { render action: 'new' }
        format.json { render json: @refactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refactors/1
  # PATCH/PUT /refactors/1.json
  def update
    respond_to do |format|
      if @refactor.update(refactor_params)
        format.html { redirect_to @refactor, notice: 'Refactor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @refactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refactors/1
  # DELETE /refactors/1.json
  def destroy
    @refactor.destroy
    respond_to do |format|
      format.html { redirect_to refactors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refactor
      @refactor = Refactor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refactor_params
      params.require(:refactor).permit(:code)
    end
end
