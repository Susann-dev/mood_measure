class MoodsController < ApplicationController

  def index
    @moods = Mood.all
  end

  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.new(mood_params)
    if @mood.save
      redirect_to moods_path(@mood)
    else
      render :new
    end
  end

  def destroy
    @mood = Mood.find(params[:id])
    @mood.destroy
  end

  private

  def mood_params
    params.require(:mood).permit(:rating)
  end
end


