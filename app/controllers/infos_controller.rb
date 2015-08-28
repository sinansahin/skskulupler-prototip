# encoding: utf-8
class InfosController < ApplicationController
  before_action :set_info, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :new, :destroy, :create]

  # GET /info
  # GET /info.json
  def index
    @infos = Info.all
  end

  # GET /info/1
  # GET /info/1.json
  def show
  end

  # GET /info/new
  def new
    @info = Info.new
  end

  # GET /info/1/edit
  def edit
  end

  # POST /info
  # POST /info.json
  def create
    @info = Info.new(info_params)

    respond_to do |format|
      if @info.save
        format.html { redirect_to @info, notice: 'info was successfully created.' }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info/1
  # PATCH/PUT /info/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to @info, notice: 'info was successfully updated.' }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info/1
  # DELETE /info/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to info_index_url, notice: 'info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:info).permit(:title, :content, :image)
    end
end
