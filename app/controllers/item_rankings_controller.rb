class ItemRankingsController < ApplicationController
  before_action :set_item_ranking, only: [:show, :edit, :update, :destroy]

  # GET /item_rankings
  # GET /item_rankings.json
  def index
    @item_rankings = ItemRanking.all
  end

  # GET /item_rankings/1
  # GET /item_rankings/1.json
  def show
  end

  # GET /item_rankings/new
  def new
    @item_ranking = ItemRanking.new
  end

  # GET /item_rankings/1/edit
  def edit
  end

  # POST /item_rankings
  # POST /item_rankings.json
  def create
    @item_ranking = ItemRanking.new(item_ranking_params)

    respond_to do |format|
      if @item_ranking.save
        format.html { redirect_to @item_ranking, notice: 'Item ranking was successfully created.' }
        format.json { render :show, status: :created, location: @item_ranking }
      else
        format.html { render :new }
        format.json { render json: @item_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_rankings/1
  # PATCH/PUT /item_rankings/1.json
  def update
    respond_to do |format|
      if @item_ranking.update(item_ranking_params)
        format.html { redirect_to @item_ranking, notice: 'Item ranking was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_ranking }
      else
        format.html { render :edit }
        format.json { render json: @item_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_rankings/1
  # DELETE /item_rankings/1.json
  def destroy
    @item_ranking.destroy
    respond_to do |format|
      format.html { redirect_to item_rankings_url, notice: 'Item ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_ranking
      @item_ranking = ItemRanking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_ranking_params
      params.require(:item_ranking).permit(:rate, :item_id)
    end
end
