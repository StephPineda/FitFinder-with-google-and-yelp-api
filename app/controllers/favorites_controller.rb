class FavoritesController < ApplicationController
  before_action :set_gym, only: :create

  def create
    if current_user.favorites.create!(gym_id: @gym.id)
      redirect_to @gym, notice: 'Gym has been favorited'
    else
      redirect_to @gym, alert: 'Something went wrong.'
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    gym = favorite.gym
    favorite.destroy
    redirect_to gym, notice: 'Gym is no longer in favorites'
  end

  def set_gym
    @gym = Gym.find(params[:gym_id])
  end
end
