class DndPlayersController < ApplicationController
  before_action :set_dnd_player, only: [:show, :edit, :update, :destroy]

  # GET /dnd_players
  # GET /dnd_players.json
  def index
    @dnd_players = DndPlayer.all
  end

  # GET /dnd_players/1
  # GET /dnd_players/1.json
  def show
  end

  # GET /dnd_players/new
  def new
    @dnd_player = DndPlayer.new
  end

  # GET /dnd_players/1/edit
  def edit
  end

  # POST /dnd_players
  # POST /dnd_players.json
  def create
    @dnd_player = DndPlayer.new(dnd_player_params)

    respond_to do |format|
      if @dnd_player.save
        format.html { redirect_to @dnd_player, notice: 'Dnd player was successfully created.' }
        format.json { render :show, status: :created, location: @dnd_player }
      else
        format.html { render :new }
        format.json { render json: @dnd_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dnd_players/1
  # PATCH/PUT /dnd_players/1.json
  def update
    respond_to do |format|
      if @dnd_player.update(dnd_player_params)
        format.html { redirect_to @dnd_player, notice: 'Dnd player was successfully updated.' }
        format.json { render :show, status: :ok, location: @dnd_player }
      else
        format.html { render :edit }
        format.json { render json: @dnd_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dnd_players/1
  # DELETE /dnd_players/1.json
  def destroy
    @dnd_player.destroy
    respond_to do |format|
      format.html { redirect_to dnd_players_url, notice: 'Dnd player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dnd_player
      @dnd_player = DndPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dnd_player_params
      params.require(:dnd_player).permit(:name, :age, :race, :gender, :experience, :description, :weight, :height)
    end
end
