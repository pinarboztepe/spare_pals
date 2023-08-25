class PalsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pals = Pal.all.order(created_at: :desc)
    @markers = @pals.geocoded.map do |pal|
      {
        lat: pal.latitude,
        lng: pal.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {pal: pal}),
        marker_html: render_to_string(partial: "marker", locals: {pal: pal})
      }
    end
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
      redirect_to pals_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_pals
    @my_pals = current_user.pals.order(created_at: :desc)
  end

  private

  def pal_params
    params.require(:pal).permit(:name, :location, :price, :photo, :emoji, :job, :word)
  end
end
