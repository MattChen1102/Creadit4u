class CategoryCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    category = Category.enabled.find(params[:category_id])
    comment = current_user.comments.new(commentable: category)
    comment.attributes = comment_params

    if comment.save
      redirect_to :back, notice: '評論已發佈'
    else
      redirect_to :back, alert: comment.errors.full_messages.to_sentence
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end