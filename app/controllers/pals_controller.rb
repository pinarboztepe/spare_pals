class PalsController < ApplicationController

  def index
    @pals = Pal.all
  end

  def show
    @pal = Pal.find(params[:id])
  end

end
