class FavoriteGymsController < ApplicationController

  def create
    if Favorite.create(favorited: @gym, user: current_user)
      redirect_to @gym, notice: 'Gym has been favorited'
    else
      redirect_to @gym, alert: 'Something went wrong.'
    end
  end

  def destroy
    Favorite.where(favorited_id: @gym.id, user_id: current_user.id).first.destroy
    redirect_to @gym, notice: 'Gym is no longer in favorites'
  end

  def set_project
    @gym = Gym.find(params[:gym_id] || params[:id])
  end
  
end
