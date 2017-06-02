class HomeController < ApiController
  before_action :set_gamer
  respond_to :html, :js

  def index
    @post = Post.new
    @friends = @gamer.all_following.unshift(@gamer)
    @activities = PublicActivity::Activity.where(owner_id: @friends).order(created_at: :desc).paginate(page: params[:page], per_page: 10)

    render json: @activities
  end

  def find_friends
    @friends = @gamer.all_following
    @gamers =  Gamer.where.not(id: @friends.unshift(@gamer)).paginate(page: params[:page])
  end

  private
  def set_gamer
    @gamer = current_gamer
  end
end
