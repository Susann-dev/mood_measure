class MoodsController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def index
    @moods = policy_scope(Mood)
    @moodsaverage = @moods.average(:rating)
  end

  def new
    @mood = Mood.new

    authorize @mood
  end

  def create
  @mood = Mood.new(mood_params)
    if @mood.save
       redirect_to moods_path(@mood)
    else
      render :new
    end
    authorize @mood
  end

  def destroy
    @mood = Mood.find(params[:id])
    @mood.destroy
  end

  private

  def mood_params
    params.require(:mood).permit(:rating, :rating2)
  end
end


