class PalsController < ApplicationController
  def show
    @pal = Pal.find(params[:id])
  end
end
