module Actionable
  extend ActiveSupport::Concern

  def action
    action_type = params[:type].to_sym
    @user = User.find(params[:user_id])
    if @user.find_action(action_type, target: @post).present?
      @user.destroy_action(action_type, target: @post)
    else
      @user.create_action(action_type, target: @post)
    end
    @post.reload.likes_count
    redirect_to :root
  end
end
