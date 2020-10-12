class RoomsController < ApplicationController
  def new
    @room = Room.new
    @users = User.where.not(id: current_user.id)
  end
  def create
    Room.create(name: room_params, user_ids: [current_user.id, user_params)
  end

  private
  def room_params
    params.require(room).permit(:name)
  end
  def user_params
    params.require(room).permit(:user_id)
  end
end
