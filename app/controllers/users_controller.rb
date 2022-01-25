class UsersController < ApplicationController
  #before_action :authenticate_user!, except: [:index]
  #before_action :set_poetry, only: [:update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # # GET /poetries/1
  # def show
  #   @poetry = Poetry.find(params[:id])
  #   render json: @poetry
  # end

  # # POST /poetries
  # def create
  #   # @poetry = current_user.poetries.new(poetry_params)
  #   @poetry = Poetry.new(poetry_params)

  #   if @poetry.save
  #     render json: @poetry, status: :created, location: @poetry
  #   else
  #     render json: @poetry.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /poetries/1
  # def update
  #   if @poetry.update(poetry_params)
  #     render json: @poetry
  #   else
  #     render json: @poetry.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /poetries/1
  # def destroy
  #   @poetry.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_poetry
  #     @poetry = current_user.poetries.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def poetry_params
  #     params.require(:poetry).permit(:title, :body, :likes, :dislikes, :user_id)
  #   end
end
