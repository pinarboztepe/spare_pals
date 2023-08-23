class PalsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pals = Pal.all
  end

  def show
    @pal = Pal.find(params[:id])
  end

  def new
    @pal = Pal.new
  end

  def create
    @pal = Pal.new(pal_params)
    @pal.user = current_user
    if @pal.rating.nil?
      @pal.rating = 0
    end
    if @pal.save
      redirect_to pal_path(@pal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pal_params
    params.require(:pal).permit(:name, :location, :price)
  end
end
