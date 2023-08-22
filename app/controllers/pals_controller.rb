class PalsController < ApplicationController

  def index
    @pals = Pal.all
  end

  # def show
  #   @pal = Pal.find(params[:id])
  # end

  # def new
  #   @pal = Pal.new
  # end

  # def create
  #   @pal = Pal.new(list_params)
  #   if @pal.save
  #     redirect_to pal_path(@pal)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def pal_params
  #   params.require(:pal).permit(:name)
  # end
end
