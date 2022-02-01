class PoetriesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :set_poetry, only: [:update, :destroy]

  # GET /poetries
  def index
    @poetries = Poetry.all

    render json: @poetries
  end

  # GET /poetries/1
  def show
    @poetry = Poetry.find(params[:id])
    @user = Poetry.find(params[:id]).user
    
    @retorno = @poetry
    render json: @retorno
  end

  def show2
    @poetry = Poetry.find(params[:id])
    @user = Poetry.find(params[:id]).user
    if current_user == @user
      @retorno = @poetry
    else
      @retorno = {error: :true}
    end  
    
    render json: @retorno
  end

  # POST /poetries
  def create
    @poetry = current_user.poetries.new(poetry_params)
    # @poetry = Poetry.new(poetry_params)

    if @poetry.save
      render json: @poetry, status: :created, location: @poetry
    else
      render json: @poetry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poetries/1
  def update
    if @poetry.update(poetry_params2)
      render json: @poetry
    else
      render json: @poetry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poetries/1
  def destroy
    @poetry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poetry
      @poetry = current_user.poetries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poetry_params
      # params.require(:poetry).permit(:title, :body, :likes, :dislikes, :user_id)
      params.require(:poetry).permit(:title, :body, :image_url, :image_name, :likes, :dislikes)
    end

    def poetry_params2
      # params.require(:poetry).permit(:title, :body, :likes, :dislikes, :user_id)
      params.require(:poetry).permit(:title, :body, :image_url, :image_name)
    end
end
