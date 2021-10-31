class MoodsController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def index
    @moods = policy_scope(Mood)
    @moodsaverage = @moods.average(:rating)
    @moodsyes = Mood.where(rating2: "1")
    @moodsno = Mood.where(rating2: "2")
    @moodsaverage3 = @moods.average(:rating3).round
  end
  

  def destroy_all
    @moods = Mood.all
    @moods.each do |m|    
        m.destroy      
    end
    redirect_to root_path, notice: "Deleted"
    authorize @moods
  end

  
  def destroy
    @mood = Mood.find(params[:rating])
    @mood.destroy_all
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

  private

  def mood_params
    params.require(:mood).permit(:rating, :rating2, :rating3)
  end
end

