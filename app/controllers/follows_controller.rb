class FollowsController < ApiController
  before_action :authenticate_gamer!
  respond_to :json

  def create
    @gamer = Gamer.find(params[:gamer_id])
    new_follow = current_gamer.follow(@gamer)

    render json: new_follow
  end

  def destroy
    @gamer = Gamer.find(params[:gamer_id])
    new_unfollow = current_gamer.stop_following(@gamer)

    render json: new_unfollow
  end
end
