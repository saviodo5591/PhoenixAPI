class LikesController < ApiController
  before_action :find_likeable
  before_action :authenticate_gamer!
  respond_to :json

  def create
    new_like = @likeable.liked_by current_gamer

    render json: new_like
  end

  def destroy
    new_dislike = @likeable.disliked_by current_gamer

    render json: new_dislike
  end

  private
  def find_likeable
    @likeable_type = params[:likeable_type].classify
    @likeable = @likeable_type.constantize.find(params[:likeable_id])
  end
end
