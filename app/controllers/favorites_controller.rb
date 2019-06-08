class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    begin
      @favorite.save
      flash[:notice] = 'Gym has been favorited'
    rescue
      flash[:alert] = 'Please log in to continue'
    end
    redirect_back(fallback_location: Gym.find(@favorite.gym_id) )
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    gym = @favorite.gym
    @favorite.destroy
    flash[:notice] = 'Gym removed from favorites'
    redirect_back(fallback_location: gym)
  end

  private
    def favorite_params
      params.require(:favorite).permit(:user_id, :gym_id)
    end

end
