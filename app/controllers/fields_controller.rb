class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :update, :destroy]

  # GET /fields
  def index
    if @savegame
      @fields = @savegame.fields
    else
      @fields = Field.all
    end
    render json: @fields
  end

  # GET /fields/1
  def show
    render json: @field
  end

  # POST /fields
  def create
    if @savegame
      @field = @savegame.fields.new(field_params)
    else
      @field = Field.new(field_params)
    end

    if @field.save
      render json: @field, status: :created, location: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fields/1
  def update
    if @field.update(field_params)
      render json: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fields/1
  def destroy
    @field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def field_params
      params.require(:field).permit(:savegame_id, :is_mine, :marked, :used, :x, :y)
    end
end
