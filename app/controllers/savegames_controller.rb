class SavegamesController < ApplicationController
  before_action :set_savegame, only: [:show, :update, :destroy]

  # GET /savegames
  def index
    @savegames = Savegame.all

    render json: @savegames
  end

  # GET /savegames/1
  def show
    render json: @savegame
  end

  # POST /savegames
  def create
    @savegame = Savegame.new(savegame_params)

    if @savegame.save
      render json: @savegame, status: :created, location: @savegame
    else
      render json: @savegame.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /savegames/1
  def update
    if @savegame.update(savegame_params)
      render json: @savegame
    else
      render json: @savegame.errors, status: :unprocessable_entity
    end
  end

  # DELETE /savegames/1
  def destroy
    @savegame.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savegame
      @savegame = Savegame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def savegame_params
      params.require(:savegame).permit(:name, :score, :size)
    end
end
