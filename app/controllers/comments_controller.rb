class CommentsController < ApiController
  before_action :authenticate_gamer!
  before_action :find_commentable, only: :create
  respond_to :json

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment_text]
      comment.gamer = current_gamer
    end
    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = current_gamer.comments.find(params[:id])
    @comment_id = params[:id]
    @comment.destroy
  end

  private
  def find_commentable
    @commentable_type = params[:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:commentable_id])
  end
end
