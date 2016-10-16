class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @conversations = Conversation.where(["sender_id = ? or recipient_id = ?", @user.id, @user.id])
    @followings = @user.followed_users
    @followers = @user.followers
  end
end
