class Item2sController < ApplicationController
  before_action :set_item2, only: [:show, :edit, :update, :destroy]

  # GET /item2s
  # GET /item2s.json
  def index
    @item2s = Item2.all
    @rayons = Rayon.all
  end

  # GET /item2s/1
  # GET /item2s/1.json
  def show
    @les_rayons = Rayon.all
  end

  # GET /item2s/new
  def new
    @item2 = Item2.new
    @les_rayons = Rayon.all
  end

  # GET /item2s/1/edit
  def edit
    @les_rayons = Rayon.all
  end

  # POST /item2s
  # POST /item2s.json
  def create
    @les_rayons = Rayon.all
    @item2 = Item2.new(item2_params)

    respond_to do |format|
      if @item2.save
        format.html { redirect_to @item2, notice: 'Item2 was successfully created.' }
        format.json { render :show, status: :created, location: @item2 }
      else
        format.html { render :new }
        format.json { render json: @item2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item2s/1
  # PATCH/PUT /item2s/1.json
  def update
    respond_to do |format|
      if @item2.update(item2_params)
        format.html { redirect_to @item2, notice: 'Item2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @item2 }
      else
        format.html { render :edit }
        format.json { render json: @item2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item2s/1
  # DELETE /item2s/1.json
  def destroy
    @item2.destroy
    respond_to do |format|
      format.html { redirect_to item2s_url, notice: 'Item2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item2
      @item2 = Item2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item2_params
      params.require(:item2).permit(:libelle, :quantite, :deja_achete, :rayon_id)
    end
end
